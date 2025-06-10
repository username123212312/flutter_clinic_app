import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            if (_isPending) _buildPendingFileAndPhoto(),
            if (!_isPending) _buildFinishedFileAndPhoto(),
            SizedBox(height: 25),
            Card(
              color: Pallete.graysGray5,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      'Description',
                      style: Theme.of(
                        context,
                      ).textTheme.labelMedium!.copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      width: screenWidth(context),
                      // height: screenHeight(context) * 0.18,
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
                                      builder: (_) => _buildDialog(context),
                                    );
                                  }
                                }
                              },
                              child: CustomElevatedButton(
                                isEnabled:
                                    !(_chosenFile == null &&
                                        _chosenPhoto == null),
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
                                fillColor:
                                    Theme.of(context).colorScheme.primary,
                                textColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  CustomDialog _buildDialog(BuildContext context) {
    return CustomDialog(
      content: Column(
        children: [
          Align(
            alignment: Alignment(-0.2, 0.0),
            child: Lottie.asset(
              'assets/lottie/file_uploaded_animation.json',
              fit: BoxFit.cover,
              width: screenWidth(context) * 0.25,
              height: screenHeight(context) * 0.17,
            ),
          ),
          Text(
            textAlign: TextAlign.center,

            'Analysis Added Successfully!',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 25),
          SizedBox(
            width: screenWidth(context) * 0.5,
            height: screenHeight(context) * 0.05,
            child: CustomElevatedButton(
              fontSize: 12,
              title: 'Back to Home',
              onTap: () {
                context.read<LabtechAnalysisBloc>().add(AnalysisFetched());
                context.pop();
                context.goNamed(AppRouteConstants.labtechHomeRouteName);
              },
              fillColor: Theme.of(context).colorScheme.primary,
              textColor: Colors.white,
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
          behavior: HitTestBehavior.opaque,
          onTap: () async {
            final file = await pickFile();
            if (file != null) {
              if (file.path.toLowerCase().endsWith('.pdf')) {
                _chosenFile = file;
                _chosenPhoto = null;
              } else {
                _chosenPhoto = file;
                _chosenFile = null;
              }
              setState(() {});
            }
          },
          child: DottedBorder(
            color: Theme.of(context).colorScheme.primary,
            dashPattern: [5, 10],
            borderType: BorderType.RRect,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              height: screenHeight(context) * 0.2,
              width: screenWidth(context) * 0.85,
              child: Center(
                child:
                    _chosenFile == null && _chosenPhoto == null
                        ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Image.asset(
                              'assets/images/upload_file_logo.png',
                              fit: BoxFit.cover,
                              width: 70,
                              height: 70,
                            ),
                            Text(
                              style: Theme.of(
                                context,
                              ).textTheme.labelMedium!.copyWith(
                                color:
                                    Theme.of(
                                      context,
                                    ).colorScheme.onSecondaryContainer,
                              ),
                              'Upload file',
                            ),
                          ],
                        )
                        : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80.0),
                          child: Column(
                            spacing: 10,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.file_copy,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              Text(
                                (_chosenFile ?? _chosenPhoto)!
                                    .uri
                                    .pathSegments
                                    .last,
                                textAlign: TextAlign.center,
                                style: Theme.of(
                                  context,
                                ).textTheme.labelMedium!.copyWith(
                                  fontSize: 11,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
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
                      ? () async {
                        state.downloadedPhoto == null
                            ? _labtechAnalysisInfoBloc.add(DownloadPhoto())
                            : FileManager.openFile(
                              state.downloadedPhoto?.localPath ?? '',
                            );
                      }
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
                      widget.analysis.resultFile == null &&
                              widget.analysis.resultPhoto == null
                          ? Pallete.grayScaleColor300
                          : Pallete.grayScaleColor200,
                  borderRadius: BorderRadius.circular(12),
                ),
                height: screenHeight(context) * 0.18,
                width: screenWidth(context) * 0.7,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset(
                      fit: BoxFit.cover,
                      'assets/images/file_logo.png',
                    ),
                    SizedBox(width: 40),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Result file',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        SizedBox(height: 20),
                        if (state.downloadedPhoto == null &&
                            widget.analysis.resultPhoto != null)
                          _buildCircledIcon(Icons.download),
                        if (state.downloadedPhoto != null &&
                            widget.analysis.resultPhoto != null)
                          _buildCircledIcon(Icons.file_copy),

                        if (state.downloadedFile == null &&
                            widget.analysis.resultFile != null)
                          _buildCircledIcon(Icons.download),

                        if (state.downloadedFile != null &&
                            widget.analysis.resultFile != null)
                          _buildCircledIcon(Icons.file_copy),

                        SizedBox(height: 10),
                      ],
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

  Container _buildCircledIcon(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Icon(icon, color: Colors.white),
    );
  }

  void _downloadOrOpenFile(String path) {}

  bool _isPending = true;
  File? _chosenFile;
  File? _chosenPhoto;
  late final LabtechAnalysisInfoBloc _labtechAnalysisInfoBloc;
}
