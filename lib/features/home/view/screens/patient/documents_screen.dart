import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/controller/analysis_list_bloc/analysis_list_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/analysis_item_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AnalysisListBloc>().add(
        AnalysisListEvent.analysisFetchRequested(),
      );
    });
  }

  @override
  void dispose() {
    _fileNameController.dispose();
    _fileDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.black1,
            size: 18,
          ),
        ),
        toolbarHeight: screenHeight(context) * 0.12,
        title: Text('Documents'),
        titleTextStyle: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(fontSize: 19),
        bottom: _buildAppBarBottom(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
        ),
        child:
            _isUpload
                ? Column(
                  children: [
                    if (_currentIndex == 0) _buildUploadedDocuments(),
                    if (_currentIndex == 1) _buildUploadNewDocument(),
                    _buildMovingButton(),
                  ],
                )
                : _buildUploaded(),
      ),
    );
  }

  Align _buildMovingButton() {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: screenWidth(context) * 0.8,
        child: CustomElevatedButton(
          title: _currentIndex == 0 ? 'Next' : 'Upload File',
          onTap: () {
            if (_currentIndex == 1 && _formKey.currentState!.validate()) {
              context.read<AnalysisListBloc>()
                ..add(
                  AnaysisAdded(
                    analysis: AnalysisModel(
                      name: _fileNameController.text,
                      description: _fileDescriptionController.text,
                      resultFile: _chosenFile?.path,
                      resultPhoto: _chosenImage?.path,
                    ),
                  ),
                )
                ..add(AnalysisListEvent.analysisFetchRequested());
            }
            if ((_chosenFile != null && _chosenImage == null) ||
                (_chosenFile == null && _chosenImage != null)) {
              setState(() {
                _currentIndex = 1;
              });
            }
          },
          fillColor: Theme.of(context).colorScheme.primary,
          textColor: Colors.white,
        ),
      ),
    );
  }

  SizedBox _buildUploadNewDocument() {
    return SizedBox(
      height: screenHeight(context) * 0.45,
      child: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          children: [
            Text.rich(
              TextSpan(
                text: 'File name',
                children: [
                  TextSpan(
                    text: ' *',
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  ),
                ],
              ),
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontSize: 16),
            ),
            SizedBox(height: 10),
            CustomTextField(
              validator: (value) {
                if (!ValidatorUtil.validateText(value)) {
                  return 'Enter a valid file name';
                } else {
                  return null;
                }
              },
              controller: _fileNameController,
              hintText: 'File name',
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 40),

            Text.rich(
              TextSpan(
                text: 'File description',
                children: [
                  TextSpan(
                    text: ' *',
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  ),
                ],
              ),
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontSize: 16),
            ),
            SizedBox(height: 10),

            CustomTextField(
              validator: (value) {
                if (!ValidatorUtil.validateText(value)) {
                  return 'Enter a valid file description';
                } else {
                  return null;
                }
              },
              controller: _fileDescriptionController,
              hintText: 'File description',
              keyboardType: TextInputType.text,
              maxLength: 100,
              textInputAction: TextInputAction.done,
            ),
            SizedBox(height: 20),
            BlocListener<AnalysisListBloc, AnalysisListState>(
              listenWhen: (previous, current) {
                return previous.status.isUploading && current.status.isData ||
                    previous.status.isUploading && current.status.isError ||
                    current.status.isUploading;
              },
              listener: (context, state) {
                if (state.status.isError) {
                  showToast(
                    context: context,
                    type: ToastificationType.error,
                    msg: state.statusMessage,
                  );
                }
                if (!state.status.isError && !state.status.isUploading) {
                  showToast(
                    context: context,
                    type: ToastificationType.success,
                    msg: state.statusMessage,
                  );
                  setState(() {
                    _fetchAllAnalysis();
                    _currentIndex = 0;
                    _isUpload = false;
                    _chosenFile = null;
                    _chosenImage = null;
                    _fileDescriptionController.clear();
                    _fileNameController.clear();
                  });
                }
              },
              child: BlocBuilder<AnalysisListBloc, AnalysisListState>(
                buildWhen:
                    (previous, current) =>
                        current.status.isUploading ||
                        (previous.status.isUploading &&
                            current.status.isData) ||
                        previous.status.isUploading && current.status.isError,
                builder: (context, state) {
                  return Center(
                    child: CircularProgressIndicator(
                      value: state.progressValue,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUploadedDocuments() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upload new document',
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 18),
        ),
        SizedBox(height: 60),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          width: screenWidth(context),
          height: screenHeight(context) * 0.3,
          child: GestureDetector(
            onTap: _pickFile,
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(12),
              dashPattern: [10, 5],
              child: Align(
                alignment: Alignment.center,
                child:
                    (_chosenFile != null || _chosenImage != null)
                        ? Column(
                          children: [
                            SizedBox(
                              height:
                                  (_chosenFile != null)
                                      ? screenHeight(context) * 0.08
                                      : screenHeight(context) * 0.07,
                            ),
                            _chosenFile == null
                                ? Image.file(
                                  _chosenImage!,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                )
                                : Icon(
                                  size: 50,
                                  Icons.picture_as_pdf,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                            SizedBox(height: screenHeight(context) * 0.01),
                            SizedBox(
                              width: screenWidth(context) * 0.4,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                (_chosenFile ?? _chosenImage)!.path
                                    .split('/')
                                    .last,
                                style: Theme.of(
                                  context,
                                ).textTheme.titleSmall!.copyWith(fontSize: 13),
                              ),
                            ),
                          ],
                        )
                        : Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(height: screenHeight(context) * 0.03),
                            Text(
                              'Upload Document',
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.copyWith(fontSize: 20),
                            ),
                            Icon(
                              size: 60,
                              Icons.arrow_circle_up_outlined,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ],
                        ),
              ),
            ),
          ),
        ),
        SizedBox(height: 60),
      ],
    );
  }

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
    );
    if (result != null && result.files.single.path != null) {
      if (result.files.single.path!.split('.').last.toLowerCase() == 'pdf') {
        setState(() {
          _chosenFile = File(result.files.single.path!);
          _chosenImage = null;
        });
      } else {
        setState(() {
          _chosenImage = File(result.files.single.path!);
          _chosenFile = null;
        });
      }
    }
  }

  Widget _buildUploaded() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Medical Documents',
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontSize: 15),
            ),
            Spacer(),
            DropdownButton(
              dropdownColor: Pallete.grayScaleColor0,
              alignment: Alignment.center,
              value: _currentAnalysisStatus,
              items:
                  AnalysisStatus.values.map((status) {
                    return DropdownMenuItem(
                      value: status,
                      child: Text(status.name),
                    );
                  }).toList(),

              onChanged: (newStatus) {
                setState(() {
                  if (newStatus != null) {
                    _currentAnalysisStatus = newStatus;
                    _fetchAllAnalysis();
                  }
                });
              },
            ),
          ],
        ),

        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          height: screenHeight(context) * 0.6,
          child: _buildDocumentsList(),
        ),
      ],
    );
  }

  Widget _buildDocumentsList() {
    return BlocBuilder<AnalysisListBloc, AnalysisListState>(
      builder: (context, state) {
        if (state.analysisList.isEmpty && !state.status.isLoading) {
          return RefreshIndicator(
            onRefresh: () async {
              _fetchAllAnalysis();
            },
            child: ListView(
              children: [
                Center(
                  heightFactor: 2.5,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/il_empty_activity.webp',
                        width: screenWidth(context) * 0.4,
                        height: screenHeight(context) * 0.17,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'No documents yet',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 16,
                          color: Pallete.oxfordBlue,
                        ),
                      ),
                      Text(
                        'try adding one',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                          color: Pallete.sliverSand,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: () async {
            _fetchAllAnalysis();
          },
          child: Skeletonizer(
            enabled: state.status.isLoading,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              itemCount:
                  state.status.isLoading ? 10 : state.analysisList.length,
              itemExtent: screenHeight(context) * 0.1,
              itemBuilder: (_, index) {
                if (state.status.isLoading) {
                  return _buildLoading();
                }
                final analysis = state.analysisList[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Dismissible(
                    onDismissed: (_) {
                      if (analysis.id != null) {
                        context.read<AnalysisListBloc>().add(
                          AnalysisListEvent.analysisRemoved(
                            analysisId: analysis.id!,
                          ),
                        );
                      }
                    },
                    key: ObjectKey(analysis),
                    background: Container(
                      width: screenWidth(context),
                      color: Theme.of(context).colorScheme.errorContainer,
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Icon(Icons.delete),
                          Spacer(),
                          Icon(Icons.delete),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    child: AnalysisItemWidget(
                      analysis:
                          state.analysisList[(state.analysisList).length -
                              1 -
                              index],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Padding _buildLoading() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Pallete.grayScaleColor300.withAlpha(100),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Pallete.grayScaleColor200,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/icons/pdf_icon.png'),
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'no document',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall!.copyWith(fontSize: 14),
                ),
                Text(
                  'no description',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall!.copyWith(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBarBottom() {
    return PreferredSize(
      preferredSize: Size(screenWidth(context), screenHeight(context) * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child:
                _isUpload
                    ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth(context) * 0.3,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: screenWidth(context) * 0.3,
                          height: 4,
                          decoration: BoxDecoration(
                            color:
                                _currentIndex == 1
                                    ? Theme.of(context).colorScheme.primary
                                    : Pallete.grayScaleColor400,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
                    )
                    : null,
          ),
          SizedBox(
            height: screenHeight(context) * 0.1,
            width: screenWidth(context) * 0.7,
            child: FittedBox(
              child: TwoSelectableWidget(
                currentIndex: _isUpload ? 1 : 0,
                twoTitles: ['Uploaded', 'New'],
                onToggleIndex: (newIndex) {
                  setState(() {
                    _isUpload = newIndex == 1 ? true : false;
                    if (newIndex == 0) {
                      _fetchAllAnalysis();
                      _currentIndex = 0;
                      _chosenFile = null;
                      _chosenImage = null;
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _fetchAllAnalysis() {
    if (_currentAnalysisStatus != AnalysisStatus.all) {
      context.read<AnalysisListBloc>().add(
        AnalysisListEvent.analysisFilterRequested(
          analysisStatus: _currentAnalysisStatus,
        ),
      );
    } else {
      context.read<AnalysisListBloc>().add(
        AnalysisListEvent.analysisFetchRequested(),
      );
    }
  }

  int _currentIndex = 0;
  bool _isUpload = false;
  File? _chosenFile;
  File? _chosenImage;
  final _fileNameController = TextEditingController();
  final _fileDescriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  AnalysisStatus _currentAnalysisStatus = AnalysisStatus.all;
}
