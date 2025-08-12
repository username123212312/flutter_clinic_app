import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

import '../../../../../core/utils/decimal_input_formatter.dart';
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

    _labtechAnalysisInfoBloc = LabtechAnalysisInfoBloc(
      analysis: widget.analysis,
      labtechAnalysisRepository: LabtechAnalysisRepository(),
    );
    _isPending = widget.analysis.status?.isPending ?? false;
    _isPaid = widget.analysis.paymentStatus?.isPaid ?? false;
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
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 15.0,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
        ),
        child: PopScope(
          canPop: true,
          onPopInvokedWithResult: (didPop, result) {
            if (didPop) {
              context.read<LabtechAnalysisBloc>().add(AnalysisFetched());
            }
          },
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
                        'Patient',
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.copyWith(fontSize: 18),
                      ),
                      Text(
                        '${widget.analysis.patientFirstName ?? 'No'} ${widget.analysis.patientLastName ?? 'No'}',
                        style: Theme.of(
                          context,
                        ).textTheme.titleSmall!.copyWith(fontSize: 15),
                      ),

                      Text(
                        'Description',
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.copyWith(fontSize: 18),
                      ),
                      SizedBox(
                        width: screenWidth(context),
                        // height: screenHeight(context) * 0.18,
                        child: Text(
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall!.copyWith(fontSize: 15),
                          widget.analysis.description ?? 'Analysis description',
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              if (!_isPaid)
                BlocBuilder<LabtechAnalysisInfoBloc, LabtechAnalysisInfoState>(
                  bloc: _labtechAnalysisInfoBloc,
                  builder: (context, state) {
                    return (state.analysis.paymentStatus?.isPaid ?? false)
                        ? SizedBox.shrink()
                        : Column(
                          children: [
                            SizedBox(height: screenHeight(context) * 0.1),
                            SizedBox(
                              width: screenWidth(context),
                              child: BlocConsumer<
                                LabtechAnalysisInfoBloc,
                                LabtechAnalysisInfoState
                              >(
                                listenWhen:
                                    (previous, current) =>
                                        current.message ==
                                            'Analysis Bill added successfully!' ||
                                        current.status.isError,
                                listener: (context, state) {
                                  if (state.status.isData) {
                                    showToast(msg: state.message);
                                    _labtechAnalysisInfoBloc.add(
                                      FetchAnalysis(),
                                    );
                                    Navigator.of(context).pop();
                                  }
                                },
                                bloc: _labtechAnalysisInfoBloc,
                                builder:
                                    (context, state) => CustomElevatedButton(
                                      title: 'Add Bill',
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          context: context,
                                          builder:
                                              (_) => AddBillBottomSheet(
                                                isLoading:
                                                    state.status.isLoading,
                                                onAdd: (price) {
                                                  _labtechAnalysisInfoBloc.add(
                                                    AddBill(
                                                      analysisId:
                                                          widget.analysis.id ??
                                                          0,
                                                      price: price,
                                                    ),
                                                  );
                                                },
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
                        );
                  },
                ),

              if (_isPending) ...[
                SizedBox(
                  height: screenHeight(context) * (_isPaid ? 0.2 : 0.02),
                ),
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
                      isEnabled: !(_chosenFile == null && _chosenPhoto == null),
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
            ],
          ),
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

  bool _isPending = true;
  bool _isPaid = false;
  File? _chosenFile;
  File? _chosenPhoto;
  late final LabtechAnalysisInfoBloc _labtechAnalysisInfoBloc;
}

class AddBillBottomSheet extends StatefulWidget {
  const AddBillBottomSheet({
    super.key,
    required this.onAdd,
    this.isLoading = false,
  });
  final void Function(double price) onAdd;
  final bool isLoading;

  @override
  State<AddBillBottomSheet> createState() => _AddBillBottomSheetState();
}

class _AddBillBottomSheetState extends State<AddBillBottomSheet> {
  final _priceController = TextEditingController();
  double _sheetHeight = 0.25; // Initial height (30% of screen)
  bool _keyboardVisible = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _priceController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _priceController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    // This will be handled by the keyboard visibility check
  }

  @override
  Widget build(BuildContext context) {
    // Check keyboard visibility
    final newKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;
    if (newKeyboardVisible != _keyboardVisible) {
      _keyboardVisible = newKeyboardVisible;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {
          _sheetHeight = _keyboardVisible ? 0.8 : 0.2;
        });
      });
    }

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * _sheetHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom:
            _keyboardVisible
                ? MediaQuery.of(context).viewInsets.bottom *
                    0.4 // Extra space for keyboard
                : 10,
      ),
      child: Column(
        children: [
          // Drag handle
          GestureDetector(
            onVerticalDragUpdate: (details) {
              final newHeight =
                  _sheetHeight -
                  (details.delta.dy / MediaQuery.of(context).size.height);
              setState(() => _sheetHeight = newHeight.clamp(0.2, 0.8));
            },
            child: Container(
              width: 60,
              height: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Text(
            'Add Analysis price',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (value) {
                      if (ValidatorUtil.isEmpty(value)) {
                        return 'Enter a valid price';
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(color: Colors.black),
                    controller: _priceController,
                    inputFormatters: [DecimalInputFormatter()],
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.attach_money,
                        color: Pallete.gray1,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 180,
                child:
                    widget.isLoading
                        ? CircularProgressIndicator()
                        : ElevatedButton(
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            if (_formKey.currentState!.validate()) {
                              widget.onAdd(double.parse(_priceController.text));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            'Add',
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(color: Colors.white),
                          ),
                        ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
