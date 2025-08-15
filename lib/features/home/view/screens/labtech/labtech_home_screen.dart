import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:our_flutter_clinic_app/core/blocs/user_bloc/user_bloc.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/analysis_item_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/custom_dialog.dart';
import '../../../../../core/widgets/transparent_content_dialog.dart';
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
              child: BlocBuilder<LabtechAnalysisBloc, LabtechAnalysisState>(
                builder: (context, state) {
                  return TextFormField(
                    onFieldSubmitted: (value) {
                      if (value.trim().isNotEmpty) {
                        _labtechAnalysisBloc.add(
                          AnalysisSearched(query: value),
                        );
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
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.filter_list_rounded),
                            color: Pallete.grayScaleColor500,
                            iconSize: 20,
                            onPressed: () async {
                              final isName = await showModalBottomSheet<bool>(
                                context: context,
                                builder:
                                    (_) => _AnalysisSearchFilterSheet(
                                      isName: state.searchByName,
                                    ),
                              );
                              if (isName != null) {
                                _labtechAnalysisBloc.add(
                                  ChangeFilter(isName: isName),
                                );
                              }
                            },
                          ),
                          IconButton(
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
                        ],
                      ),
                      hintText: 'Search analysis',
                      hintStyle: Theme.of(
                        context,
                      ).textTheme.labelMedium!.copyWith(
                        fontSize: 15,
                        color: Pallete.grayScaleColor500,
                      ),
                    ),
                    inputFormatters:
                        state.searchByName
                            ? null
                            : [FilteringTextInputFormatter.digitsOnly],
                    keyboardType:
                        state.searchByName
                            ? TextInputType.text
                            : TextInputType.number,
                  );
                },
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
        if (state.analysisList.isEmpty && !state.status.isLoading) {
          return _buildEmpty();
        }
        return Skeletonizer(
          enabled: state.status.isLoading,
          child: ListView.builder(
            reverse: true,
            itemExtent: screenHeight(context) * 0.12,
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
                listener: (_, state) async {
                  if (state.status.isLoading) {
                    LoadingOverlay().show(context);
                  } else {
                    LoadingOverlay().hideAll();
                    if (state.status.isError &&
                        state.statusMessage
                                .substring(0, 1)
                                .toLowerCase()
                                .trim() !=
                            'no') {
                      showToast(
                        context: context,
                        type: ToastificationType.error,
                        msg: state.statusMessage,
                      );
                    }
                  }
                },
              ),
            ],
            child: CustomElevatedButton(
              fontSize: 15,
              title: 'Logout',
              onTap: () {
                _showTDialog(context);
              },
              fillColor: Theme.of(context).colorScheme.primary,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> _showTDialog(BuildContext context) {
    return TransparentDialog.show(
      barrierDismissible: true,
      context: context,
      builder:
          (_) => CustomDialog(
            size: Size(
              screenWidth(context) * 0.8,
              screenHeight(context) * 0.17,
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Are you sure?',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: screenWidth(context) * 0.3,
                      height: screenHeight(context) * 0.05,
                      child: CustomElevatedButton(
                        fontSize: 12,
                        title: 'back',
                        onTap: () {
                          context.pop();
                        },
                        fillColor: Pallete.grayScaleColor400,
                        textColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth(context) * 0.3,
                      height: screenHeight(context) * 0.05,
                      child: CustomElevatedButton(
                        fontSize: 12,
                        title: 'Logout',
                        onTap: () {
                          context.read<UserBloc>().add(UserLoggedOut());
                          context.pop();
                        },
                        fillColor: Theme.of(context).colorScheme.primary,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }

  late LabtechAnalysisBloc _labtechAnalysisBloc;
  final _searchController = TextEditingController();
  int _currentStatusindex = 0;
}

class _AnalysisSearchFilterSheet extends StatefulWidget {
  const _AnalysisSearchFilterSheet({this.isName = true});
  final bool isName;

  @override
  State<_AnalysisSearchFilterSheet> createState() =>
      _AnalysisSearchFilterSheetState();
}

class _AnalysisSearchFilterSheetState
    extends State<_AnalysisSearchFilterSheet> {
  @override
  void initState() {
    super.initState();
    _isName = widget.isName;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          SizedBox.shrink(),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
          ),

          Text(
            'Search By',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.copyWith(fontSize: 18),
          ),
          RadioListTile<bool>(
            tileColor: Pallete.primaryColor,
            fillColor: WidgetStatePropertyAll(Pallete.primaryColor),

            title: Text(
              'Analysis Name',
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontSize: 12),
            ),
            value: true,
            groupValue: _isName,
            onChanged:
                (value) => setState(() {
                  _isName = value!;
                }),
          ),
          RadioListTile<bool>(
            tileColor: Pallete.grayBorderColor,
            fillColor: WidgetStatePropertyAll(Pallete.primaryColor),

            title: Text(
              'Patient Number',
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontSize: 12),
            ),
            value: false,
            groupValue: _isName,
            onChanged:
                (value) => setState(() {
                  _isName = value!;
                }),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              fixedSize: Size(
                screenWidth(context) * 0.3,
                screenHeight(context) * 0.06,
              ),
            ),
            onPressed: () {
              context.pop<bool>(_isName);
            },
            child: Text(
              'Ok',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox.shrink(),
        ],
      ),
    );
  }

  bool _isName = true;
}
