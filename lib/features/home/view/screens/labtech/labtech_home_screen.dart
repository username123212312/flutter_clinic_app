import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/analysis_item_widget.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/home_widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../controller/labtech_analysis_bloc/labtech_analysis_bloc.dart';
import '../../../repository/labtech_analysis_repository.dart';

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
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: screenHeight(context) * 0.11,
        title: Text('Analysis'),
        actions: _buildAppBarActions(),
        titleTextStyle: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(fontSize: 25),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          _labtechAnalysisBloc.add(AnalysisFetched());
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  _buildTwoSelectable(),
                  SizedBox(height: 20),
                  _buildList(),
                ],
              ),
            ),
          ],
        ),
      ),

      drawer: _buildDrawer(context, currentUser),
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
      child: TwoSelectableWidget(
        twoTitles: ['Pending', 'Finished'],
        onToggleIndex: (newIndex) async {
          if (newIndex == 0) {
            _labtechAnalysisBloc.add(
              AnalysisStatusChanged(analysisStatus: AnalysisStatus.pending),
            );
          } else {
            _labtechAnalysisBloc.add(
              AnalysisStatusChanged(analysisStatus: AnalysisStatus.finished),
            );
          }
        },
      ),
    );
  }

  List<Widget> _buildAppBarActions() {
    return [
      IconButton.outlined(
        style: IconButton.styleFrom(
          fixedSize: Size(20, 20),
          side: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
        alignment: Alignment.center,
        onPressed: () {},
        icon: Icon(
          Icons.search,
          size: 25,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    ];
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
      backgroundColor: Pallete.grayScaleColor200,
      child: Column(
        children: [
          SizedBox(height: screenHeight(context) * 0.08),
          Center(
            child: CircleAvatar(
              radius: 40,
              child: Icon(Icons.account_circle, size: 60),
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
          Text(currentUser?.email ?? currentUser?.phone ?? 'No Email'),
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
}
