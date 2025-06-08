import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/providers/file_manager/file_manager.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/controller/labtech_analysis_info/labtech_analysis_info_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/controller/labtech_analysis_bloc/labtech_analysis_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/add_analysis_result_request.dart';
import 'package:our_flutter_clinic_app/features/home/repository/labtech_analysis_repository.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/transparent_content_dialog.dart';
import '../../../../../core/widgets/widgets.dart';

class AnalysisInfoScreen extends StatefulWidget {
  const AnalysisInfoScreen({super.key, required this.analysis});
  final AnalysisModel analysis;

  @override
  State<AnalysisInfoScreen> createState() => _AnalysisInfoScreenState();
}

class _AnalysisInfoScreenState extends State<AnalysisInfoScreen> {
  @override
  void initState() {
    super.initState();
    _isPending = widget.analysis.status?.isPending ?? false;
    _labtechAnalysisInfoBloc = LabtechAnalysisInfoBloc(
      analysis: widget.analysis,
      labtechAnalysisRepository: LabtechAnalysisRepository(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: screenHeight(context) * 0.11,
        title: Text(widget.analysis.name),
        titleTextStyle: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(fontSize: 25),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          if (_isPending) _buildPendingFileAndPhoto(),
          if (!_isPending) _buildFinishedFileAndPhoto(),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: screenWidth(context),
                  height: screenHeight(context) * 0.18,
                  child: Text(
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(fontSize: 17),
                    widget.analysis.description ?? 'Analysis description',
                  ),
                ),

                if (_isPending)
                  Column(
                    children: [
                      SizedBox(height: screenHeight(context) * 0.2),
                      SizedBox(
                        width: screenWidth(context),
                        child: BlocListener<
                          LabtechAnalysisInfoBloc,
                          LabtechAnalysisInfoState
                        >(
                          bloc: _labtechAnalysisInfoBloc,
                          listener: (context, state) async {
                            if (state.status.isLoading) {
                              LoadingOverlay().show(context);
                            } else {
                              LoadingOverlay().hideAll();
                              if (state.status.isDone) {
                                await TransparentDialog.show(
                                  context: context,
                                  barrierDismissible: false,
                                  builder:
                                      (_) => CustomDialog(
                                        content: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment(-0.2, 0.0),
                                              child: Lottie.asset(
                                                'assets/lottie/successfully_animation.json',
                                                fit: BoxFit.cover,
                                                width:
                                                    screenWidth(context) * 0.2,
                                                height:
                                                    screenHeight(context) *
                                                    0.15,
                                              ),
                                            ),
                                            Text(
                                              textAlign: TextAlign.center,

                                              'Analysis Added Successfully!',
                                              style: Theme.of(
                                                context,
                                              ).textTheme.labelMedium!.copyWith(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(height: 25),
                                            SizedBox(
                                              width: screenWidth(context) * 0.5,
                                              height:
                                                  screenHeight(context) * 0.05,
                                              child: CustomElevatedButton(
                                                fontSize: 12,
                                                title: 'Back to Home',
                                                onTap: () {
                                                  context
                                                      .read<
                                                        LabtechAnalysisBloc
                                                      >()
                                                      .add(AnalysisFetched());
                                                  context.pop();
                                                  context.goNamed(
                                                    AppRouteConstants
                                                        .labtechHomeRouteName,
                                                  );
                                                },
                                                fillColor:
                                                    Theme.of(
                                                      context,
                                                    ).colorScheme.primary,
                                                textColor: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                );
                              }
                            }
                          },
                          child: CustomElevatedButton(
                            isEnabled:
                                !(_chosenFile == null && _chosenPhoto == null),
                            title: 'Add result',
                            onTap: () {
                              _labtechAnalysisInfoBloc.add(
                                AnalysisResultAdded(
                                  request: AddAnalysisResultRequest(
                                    id: widget.analysis.id ?? 0,
                                    filePath: _chosenFile?.path,
                                    photoPath: _chosenPhoto?.path,
                                  ),
                                ),
                              );
                            },
                            fillColor: Theme.of(context).colorScheme.primary,
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildPendingFileAndPhoto() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () async {
            _chosenFile = await pickFile();
            setState(() {});
          },
          child: Container(
            decoration: BoxDecoration(
              color:
                  _chosenFile == null
                      ? Pallete.grayScaleColor300
                      : Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            height: screenHeight(context) * 0.18,
            width: screenWidth(context) * 0.4,
            child: Center(
              child: Text(
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
                widget.analysis.resultFile == null
                    ? 'Upload file'
                    : 'Result file',
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            _chosenPhoto = await pickPhoto();
            setState(() {});
          },
          child: Container(
            decoration: BoxDecoration(
              color:
                  _chosenPhoto == null
                      ? Pallete.grayScaleColor300
                      : Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.circular(12),
            ),
            height: screenHeight(context) * 0.18,
            width: screenWidth(context) * 0.4,
            child: Center(
              child: Text(
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
                widget.analysis.resultPhoto == null
                    ? 'Upload photo'
                    : 'Result photo',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFinishedFileAndPhoto() {
    return BlocBuilder<LabtechAnalysisInfoBloc, LabtechAnalysisInfoState>(
      bloc: _labtechAnalysisInfoBloc,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap:
                  widget.analysis.resultFile == null
                      ? null
                      : () async {
                        state.downloadedFile == null
                            ? _labtechAnalysisInfoBloc.add(DownloadFile())
                            : FileManager.openFile(
                              state.downloadedFile?.localPath ?? '',
                            );
                      },
              child: Container(
                decoration: BoxDecoration(
                  color:
                      widget.analysis.resultFile == null
                          ? Pallete.grayScaleColor300
                          : Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                height: screenHeight(context) * 0.18,
                width: screenWidth(context) * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.analysis.resultFile != null)
                      Column(
                        children: [
                          if (state.downloadedFile == null)
                            Icon(Icons.download),
                          if (state.downloadedFile != null)
                            Icon(Icons.file_copy_outlined),
                          SizedBox(height: 10),
                        ],
                      ),
                    Text(
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                      widget.analysis.resultFile == null
                          ? 'No file'
                          : 'Result file',
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap:
                  widget.analysis.resultPhoto == null
                      ? null
                      : () {
                        state.downloadedPhoto == null
                            ? _labtechAnalysisInfoBloc.add(DownloadPhoto())
                            : FileManager.openFile(
                              state.downloadedPhoto?.localPath ?? '',
                            );
                      },
              child: Container(
                decoration: BoxDecoration(
                  color:
                      widget.analysis.resultPhoto == null
                          ? Pallete.grayScaleColor300
                          : Theme.of(context).colorScheme.tertiary,
                  borderRadius: BorderRadius.circular(12),
                ),
                height: screenHeight(context) * 0.18,
                width: screenWidth(context) * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.analysis.resultPhoto != null)
                      Column(
                        children: [
                          if (state.downloadedPhoto == null)
                            Icon(Icons.download),
                          if (state.downloadedPhoto != null)
                            Icon(Icons.file_copy_outlined),
                          SizedBox(height: 10),
                        ],
                      ),
                    Text(
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                      widget.analysis.resultPhoto == null
                          ? 'No photo'
                          : 'Result photo',
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  bool _isPending = true;
  File? _chosenFile;
  File? _chosenPhoto;
  late final LabtechAnalysisInfoBloc _labtechAnalysisInfoBloc;
}
