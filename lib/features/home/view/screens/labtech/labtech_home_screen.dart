import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/analysis_item_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../controller/labtech_analysis_bloc/labtech_analysis_bloc.dart';

class LabtechHomeScreen extends StatefulWidget {
  const LabtechHomeScreen({super.key});

  @override
  State<LabtechHomeScreen> createState() => _LabtechHomeScreenState();
}

class _LabtechHomeScreenState extends State<LabtechHomeScreen> {
  @override
  void initState() {
    super.initState();
    _labtechAnalysisBloc = context.read<LabtechAnalysisBloc>();
    _labtechAnalysisBloc.add(AnalysisFetched());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _labtechAnalysisBloc = context.read<LabtechAnalysisBloc>();
    final currentUser = context.read<AuthBloc>().state.authUser?.user;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(AppRouteConstants.labtechAddAnalysisRouteName);
        },
        tooltip: 'New Analysis',
        child: Icon(Icons.add),
      ),

      body: RefreshIndicator(
        onRefresh: () async {
          _labtechAnalysisBloc.add(AnalysisFetched());
        },
        child: CustomScrollView(
          slivers: [
            _buildAppBar(),
            SliverToBoxAdapter(
              child: Column(children: [SizedBox(height: 20), _buildList()]),
            ),
          ],
        ),
      ),

      drawer: _buildDrawer(context, currentUser),
    );
  }

  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      floating: true,
      snap: true,
      toolbarHeight: screenHeight(context) * 0.11,
      expandedHeight: screenHeight(context) * 0.12,
      title: Text('Analysis'),
      titleTextStyle: Theme.of(
        context,
      ).textTheme.titleMedium!.copyWith(fontSize: 25),
      forceMaterialTransparency: true,
      bottom: PreferredSize(
        preferredSize: Size(screenWidth(context), screenHeight(context) * 0.13),
        child: Column(
          children: [
            _buildTwoSelectable(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                onFieldSubmitted: (value) {
                  if (value.isNotEmpty) {
                    _labtechAnalysisBloc.add(AnalysisSearched(query: value));
                  }
                },
                onChanged:
                    (value) => _labtechAnalysisBloc.add(
                      AnalysisSearched(query: value),
                    ),
                controller: _searchController,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 15),
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                    borderSide: BorderSide(
                      color: Pallete.grayBorderColor,

                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 13,
                    horizontal: 15,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    color: Pallete.grayScaleColor500,
                    iconSize: 20,
                    onPressed: () {
                      if (_searchController.text.isNotEmpty) {
                        _searchController.clear();
                        _labtechAnalysisBloc.add(AnalysisFetched());
                      }
                    },
                  ),
                  hintText: 'Search analysis',
                  hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 15,
                    color: Pallete.grayScaleColor500,
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
          ],
        ),
      ),
    );
  }

  BlocBuilder<LabtechAnalysisBloc, LabtechAnalysisState> _buildList() {
    return BlocBuilder<LabtechAnalysisBloc, LabtechAnalysisState>(
      builder: (context, state) {
        if (state.analysisList.isEmpty) {
          return _buildEmpty();
        }
        return Skeletonizer(
          enabled: state.status.isLoading,
          child: ListView.builder(
            reverse: true,
            itemExtent: screenHeight(context) * 0.1,
            padding: EdgeInsets.symmetric(horizontal: 30),
            itemCount: state.analysisList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              final analysis = state.analysisList[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: AnalysisItemWidget(
                  isLab: true,
                  onTap: () {
                    context.pushNamed(
                      AppRouteConstants.analysisInfoRouteName,
                      extra: analysis.copyWith(status: state.analysisStatus),
                    );
                  },
                  analysis: analysis,
                ),
              );
            },
          ),
        );
      },
    );
  }

  Center _buildTwoSelectable() {
    return Center(
      child: SizedBox(
        height: screenHeight(context) * 0.08,
        width: screenWidth(context) * 0.9,
        child: FittedBox(
          child: TwoSelectableWidget(
            currentIndex: _currentStatusindex,
            twoTitles: ['Pending', 'Finished'],
            onToggleIndex: (newIndex) async {
              setState(() {
                _currentStatusindex = newIndex;
              });

              if (_searchController.text.isNotEmpty) {
                _searchController.clear();
              }
              if (newIndex == 0) {
                _labtechAnalysisBloc.add(
                  AnalysisStatusChanged(analysisStatus: AnalysisStatus.pending),
                );
              } else {
                _labtechAnalysisBloc.add(
                  AnalysisStatusChanged(
                    analysisStatus: AnalysisStatus.finished,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Column _buildEmpty() {
    return Column(
      children: [
        SizedBox(height: screenHeight(context) * 0.2),
        Image.asset(
          'assets/images/il_empty_activity.webp',
          width: screenWidth(context) * 0.4,
          height: screenHeight(context) * 0.17,
          fit: BoxFit.contain,
        ),
        Text(
          'Analysis still empty',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontSize: 16,
            color: Pallete.oxfordBlue,
          ),
        ),
        Text(
          'Try adding an analysis',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: 12,
            color: Pallete.sliverSand,
          ),
        ),
      ],
    );
  }

  Drawer _buildDrawer(BuildContext context, UserModel? currentUser) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(height: screenHeight(context) * 0.08),
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 40,
              child: Image.asset(
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                'assets/icons/labtech_icon.png',
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            ('${currentUser?.firstName ?? 'Lab'} ') +
                (currentUser?.lastName ?? 'Tech'),
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            currentUser?.email ?? currentUser?.phone ?? 'No Email',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          SizedBox(height: screenHeight(context) * 0.5),

          MultiBlocListener(
            listeners: [
              BlocListener<AuthBloc, AuthState>(
                listener: (_, state) {
                  if (!(state.isAuth ?? true)) {
                    context.goNamed(AppRouteConstants.welcomeRouteName);
                  }
                },
              ),
              BlocListener<UserBloc, UserState>(
                listener: (_, state) {
                  if (state.status.isLoading) {
                    LoadingOverlay().show(context);
                  } else {
                    LoadingOverlay().hideAll();
                    clearAndShowSnackBar(context, state.statusMessage);
                  }
                },
              ),
            ],
            child: CustomElevatedButton(
              fontSize: 15,
              title: 'Logout',
              onTap: () {
                context.read<UserBloc>().add(UserLoggedOut());
              },
              fillColor: Theme.of(context).colorScheme.primary,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  late LabtechAnalysisBloc _labtechAnalysisBloc;
  final _searchController = TextEditingController();
  int _currentStatusindex = 0;
}
