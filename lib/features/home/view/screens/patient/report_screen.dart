import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import '../../../controller/report_cubit/report_cubit.dart';
import '../../../model/report_model.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  static void show(BuildContext context) async {
    return await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (context) => const ReportScreen(),
    );
  }

  @override
  State<ReportScreen> createState() => _ReportBottomSheetState();
}

class _ReportBottomSheetState extends State<ReportScreen> {
  @override
  void initState() {
    super.initState();
    _reportCubit = ReportCubit();
  }

  @override
  void dispose() {
    _commentController.dispose();
    _reportCubit.close();
    super.dispose();
  }

  final List<String> reportReasons = [
    'Privacy violation',
    'Inappropriate Content',
    'Fake Information',
    'Technical Issue',
    'Other',
  ];

  void _submitReport() async {
    if (_selectedReason == null || _commentController.text.trim().isEmpty) {
      Fluttertoast.showToast(
        msg: 'Please fill all fields',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_RIGHT,
        timeInSecForIosWeb: 1,
        backgroundColor: Pallete.graysGray2,
        textColor: Colors.black,
        fontSize: 14.0,
      );
      return;
    } else {
      _reportCubit.report(
        ReportModel(
          type: _selectedReason!,
          description: _commentController.text,
        ),
      );
      await for (final newState in _reportCubit.stream) {
        if (newState.status.isDone || newState.status.isError) {
          Fluttertoast.showToast(
            msg: newState.message,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM_RIGHT,
            timeInSecForIosWeb: 1,
            backgroundColor: Pallete.graysGray2,
            textColor: Colors.black,
            fontSize: 14.0,
          );
          break;
        }
      }
      if (_reportCubit.state.status.isDone) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: const BoxDecoration(
        color: Pallete.grayScaleColor0,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Pallete.black1,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Center(
              child: Text(
                'Report a problem',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 18,
                  color: Pallete.black1,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'We carefully review all reports to ensure a safe experience for everyone.',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 14,
                color: Pallete.sliverSand,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Select a reason',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 16,
                color: Pallete.black1,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children:
                  reportReasons.map((reason) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Radio<String>(
                        value: reason,
                        groupValue: _selectedReason,
                        onChanged: (value) {
                          setState(() {
                            _selectedReason = value;
                          });
                        },
                        activeColor: Pallete.primaryColor,
                        fillColor: WidgetStateProperty.resolveWith<Color>((
                          states,
                        ) {
                          if (states.contains(WidgetState.selected)) {
                            return Pallete.primaryColor;
                          }
                          return Pallete.black1;
                        }),
                      ),
                      title: Text(
                        reason,
                        style: TextStyle(fontSize: 15, color: Pallete.black1),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedReason = reason;
                        });
                      },
                    );
                  }).toList(),
            ),

            const SizedBox(height: 8),
            Text(
              'Describe the issue',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 16,
                color: Pallete.black1,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Pallete.grayScaleColor0,
                border: Border.all(
                  color: Pallete.primaryColor.withValues(alpha: 0.2),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 16,
                  color: Pallete.black1,
                ),
                controller: _commentController,
                textInputAction: TextInputAction.done,
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: 'Please describe the issue more clearly',
                  hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 14,
                    color: Pallete.sliverSand,
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: BlocBuilder<ReportCubit, ReportState>(
                bloc: _reportCubit,
                builder: (context, state) {
                  return state.status.isLoading
                      ? CircularProgressIndicator()
                      : CustomButton(
                        text: 'Report',
                        onPressed: _submitReport,
                        color: Pallete.primaryColor,
                        width: screenWidth(context) * 0.4,
                        height: screenHeight(context) * 0.05,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        borderRadius: 32,
                        fontSize: 16,
                        textColor: Pallete.grayScaleColor0,
                      );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  late final ReportCubit _reportCubit;
  String? _selectedReason;
  final TextEditingController _commentController = TextEditingController();
}
