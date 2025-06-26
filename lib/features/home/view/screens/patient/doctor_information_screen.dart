import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:our_flutter_clinic_app/features/home/model/doctor_model.dart';

import '../../../../../../../core/theme/app_pallete.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../auth/view/widgets/auth_widgets.dart';
import '../../../../auth/view/widgets/custom_button.dart';
import '../../../controller/doctor_info_cubit/doctor_info_cubit.dart';
import '../../../repository/doctor_info_repository.dart';
import '../../widgets/widget_doctor/Schedule_Box.dart';
import '../../widgets/widget_doctor/doctor_Info_card.dart';
import '../../widgets/widget_doctor/info_box.dart';

class DoctorInfoScreen extends StatefulWidget {
  const DoctorInfoScreen({super.key, required this.doctor});
  final DoctorModel doctor;

  @override
  State<DoctorInfoScreen> createState() => _DoctorInfoScreenState();
}

class _DoctorInfoScreenState extends State<DoctorInfoScreen> {
  String selectedTime = '';
  DateTime? selectedDate;
  final TextEditingController _dateController = TextEditingController();

  final List<String> schedules = [
    '10:30am - 11:30am',
    '11:30am - 12:30pm',
    '12:30am - 1:30pm',
    '2:30am - 3:30pm',
    '3:30am - 4:30pm',
    '4:30am - 5:30pm',
  ];

  @override
  void initState() {
    _doctorInfoCubit = DoctorInfoCubit(
      doctorInfoRepository: DoctorInfoRepository(),
      doctor: widget.doctor,
    )..fetchDoctorDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        title: Text(
          'Doctor’s Info',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 16,
            color: Pallete.grayScaleColor0,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.grayScaleColor0,
            size: 18,
          ),
        ),

        backgroundColor: Pallete.primaryColor,
      ),
      backgroundColor: Pallete.primaryColor,
      body: Column(
        children: [
          SizedBox(height: screenHeight(context) * 0.001),
          SizedBox(
            child: Image.asset(
              widget.doctor.photoPath ?? "assets/images/Jennifer_Miller.png",
              width: screenWidth(context) * 0.4,
              height: screenHeight(context) * 0.3,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                color: Pallete.grayScaleColor0,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Pallete.grayScaleColor200,
                                  width: 1.5,
                                ),
                              ),
                            ),
                            padding: const EdgeInsets.only(bottom: 8),
                            child: DoctorInfCard(
                              doctorName:
                                  '${widget.doctor.firstName ?? 'No'} ${widget.doctor.lastName ?? 'Doctor'}',
                              specialty:
                                  widget.doctor.speciality ?? 'No speciality',
                              rating:
                                  double.tryParse(
                                    widget.doctor.finalRate ?? '0.0',
                                  ) ??
                                  0.0,
                              backgroundColor: Pallete.grayScaleColor0,
                              startTime: '',
                              endTime: '',
                              onRatePressed: () {
                                context.pushNamed(
                                  AppRouteConstants.doctorRatingRouteName,
                                  extra: widget.doctor,
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InfoBox(
                                backgroundColor: Pallete.grayScaleColor0,
                                title: '15yr',
                                subtitle: 'Experience',
                              ),
                              InfoBox(
                                backgroundColor: Pallete.grayScaleColor0,
                                title: widget.doctor.treated?.toString() ?? '0',
                                subtitle: 'Treated',
                              ),
                              InfoBox(
                                backgroundColor: Pallete.grayScaleColor0,
                                title: '\$0.0',
                                subtitle: 'Hourly Rate',
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "Select Date",
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(color: Pallete.black1, fontSize: 18),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: screenHeight(context) * 0.085,
                            child: CustomTextField(
                              hintText: 'Select Date',
                              keyboardType: TextInputType.text,
                              controller: _dateController,
                              readOnly: true,
                              onTap: () async {
                                final selected = await showDatePicker(
                                  context: context,
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2025, 7),
                                );
                                if (selected != null) {
                                  setState(() {
                                    selectedDate = selected;
                                    _dateController.text =
                                        "${selected.day}/${selected.month}/${selected.year}";
                                  });
                                  if (mounted) {
                                    FocusScope.of(context).unfocus();
                                  }
                                }
                              },
                              suffixIcon: const Icon(
                                Icons.calendar_month,
                                color: Pallete.grayScaleColor500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Schedules",
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(fontSize: 18, color: Pallete.black1),
                          ),
                          const SizedBox(height: 12),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: schedules.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  childAspectRatio: 3.5,
                                ),
                            itemBuilder: (context, index) {
                              return ScheduleWidget(
                                time: schedules[index],
                                isSelected: selectedTime == schedules[index],
                                onTap: () {
                                  setState(() {
                                    selectedTime = schedules[index];
                                  });
                                },
                              );
                            },
                          ),
                          const SizedBox(height: 24),
                          CustomButton(
                            text: "Book Appointment",
                            onPressed: () {
                              context.pushNamed(
                                AppRouteConstants.reservationDetailsRouteName,
                              );
                            },
                            color: Pallete.primaryColor,

                            width: double.infinity,
                            height: screenHeight(context) * 0.058,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            borderRadius: 32,
                            textColor: Pallete.grayScaleColor0,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  late final DoctorInfoCubit _doctorInfoCubit;
}
