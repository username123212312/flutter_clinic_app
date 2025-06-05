import 'dart:developer';

import 'package:lottie/lottie.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/core/widgets/custom_dialog.dart';
import 'package:our_flutter_clinic_app/core/widgets/loading_overlay.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:our_flutter_clinic_app/features/home/controller/appointments_bloc/appointments_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/controller/new_appointment_bloc/new_appointment_bloc.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:our_flutter_clinic_app/features/home/repository/new_appointment_repository.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/appointments/schedules_item_widget.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/custom_drop_down_widget.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/doctor_card_widget.dart';
import 'package:our_flutter_clinic_app/features/home/view/widgets/search_text_field.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/transparent_content_dialog.dart';
import '../../../model/doctor_model.dart';

class BookNewAppointmentScreen extends StatefulWidget {
  const BookNewAppointmentScreen({super.key});

  @override
  State<BookNewAppointmentScreen> createState() =>
      _BookNewAppointmentScreenState();
}

class _BookNewAppointmentScreenState extends State<BookNewAppointmentScreen> {
  @override
  void initState() {
    super.initState();
    _searchFocusNode = FocusNode();
    _newAppointmentBloc = NewAppointmentBloc(
      newAppointmentRepository: NewAppointmentRepository(),
    )..add(NewAppointmentEvent.clinicsFetched());
  }

  @override
  void dispose() {
    _dateController.dispose();
    _searchFocusNode.dispose();
    _searchController.dispose();
    _newAppointmentBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        forceMaterialTransparency: true,
        title: Text(
          'Book New Appointment',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 20,
            color: Pallete.black1,
          ),
        ),
        toolbarHeight: screenHeight(context) * 0.1,
        bottom: _buildBottomOfAppBar(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          right: 30.0,
          left: 30.0,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTwoDropdowns(),
            SizedBox(height: 20),
            _buildDatePicker(),
            SizedBox(height: 20),
            _buildSchedules(),
            SizedBox(height: 30),
            _buildBottomButton(),
          ],
        ),
      ),
    );
  }

  SizedBox _buildBottomButton() {
    return SizedBox(
      width: screenWidth(context),
      child: BlocListener<NewAppointmentBloc, NewAppointmentState>(
        bloc: _newAppointmentBloc,
        listener: (context, state) async {
          if (state.status!.isLoading && !_isOverlayOpened) {
            LoadingOverlay().show(context);
          } else {
            LoadingOverlay().hideAll();
          }
          if (state.statusMessage == 'Appointment added successfully') {
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
                            width: screenWidth(context) * 0.2,
                            height: screenHeight(context) * 0.15,
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          state.statusMessage ??
                              'Appointment Added Successfully!',
                          style: Theme.of(context).textTheme.labelMedium!
                              .copyWith(color: Colors.black, fontSize: 15),
                        ),
                        SizedBox(height: 25),
                        SizedBox(
                          width: screenWidth(context) * 0.5,
                          height: screenHeight(context) * 0.05,
                          child: CustomElevatedButton(
                            fontSize: 12,
                            title: 'Back to Home',
                            onTap: () {
                              context.read<AppointmentsBloc>().add(
                                AppointmentsFetched(),
                              );
                              context.pop();
                              context.goNamed(AppRouteConstants.homeRouteName);
                            },
                            fillColor: Theme.of(context).colorScheme.primary,
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
            );
          }
        },
        child: CustomElevatedButton(
          borderRadius: 32,
          title: 'Next',
          onTap: () {
            if (_currentSchedule != null) {
              _newAppointmentBloc.add(BookedNewAppointment());
            } else {
              clearAndShowSnackBar(context, 'You must select a time');
            }
          },
          fillColor: Theme.of(context).colorScheme.primary,
          textColor: Colors.white,
        ),
      ),
    );
  }

  Column _buildSchedules() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Schedules',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 18),
        ),
        SizedBox(height: 10),
        BlocBuilder<NewAppointmentBloc, NewAppointmentState>(
          bloc: _newAppointmentBloc,
          builder: (context, state) {
            return GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.5,
                crossAxisSpacing: 10,
                mainAxisExtent: screenHeight(context) * 0.06,
                mainAxisSpacing: 10,
              ),
              shrinkWrap: true,
              children: List.generate(6, (index) {
                final time = TimeOfDay(hour: 09 + index, minute: 00);
                return SchedulesItemWidget<TimeOfDay>(
                  isSelected:
                      _currentSchedule == null
                          ? null
                          : _currentSchedule == index,
                  onSelected:
                      (state.availableTimes == null ||
                              state.availableTimes!.isEmpty ||
                              !state.availableTimes!.any(
                                (listTime) => listTime == time,
                              ))
                          ? null
                          : (newValue) {
                            setState(() {
                              _currentSchedule = index;
                            });
                            _newAppointmentBloc.add(
                              NewAppointmentEvent.scheduleSelected(
                                time: newValue,
                              ),
                            );
                          },
                  value: formatTime(time),
                  data: time,
                );
              }),
            );
          },
        ),
      ],
    );
  }

  Column _buildDatePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Date',
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 18),
        ),
        SizedBox(height: 10),
        BlocBuilder<NewAppointmentBloc, NewAppointmentState>(
          bloc: _newAppointmentBloc,
          builder: (context, state) {
            return CustomTextField(
              onTap:
                  (state.dates != null && state.dates!.isEmpty)
                      ? null
                      : () async {
                        final selectedDate = await _selectDate(state.dates!);
                        if (selectedDate != null) {
                          _newAppointmentBloc.add(
                            NewAppointmentEvent.dateSelected(
                              date: selectedDate,
                            ),
                          );
                        }
                      },
              hintText: 'Select Date',
              keyboardType: TextInputType.datetime,
              readOnly: true,
              controller: _dateController,
              suffixIcon: Image.asset('assets/icons/ic_calendar.png'),
            );
          },
        ),
      ],
    );
  }

  Future<DateTime?> _selectDate(List<DateTime> availableDates) async {
    final date = await showRestrictedDatePicker(
      context: context,
      availableDates: availableDates,
    );
    if (date != null) {
      setState(() {
        _dateController.text = DateFormat('EEEE, MMMM, d, y').format(date);
      });
      return date;
    } else {
      return null;
    }
  }

  Column _buildTwoDropdowns() {
    return Column(
      children: [
        BlocBuilder<NewAppointmentBloc, NewAppointmentState>(
          bloc: _newAppointmentBloc,
          builder: (context, state) {
            return CustomDropDownWidget<ClinicModel>(
              values: state.clinics,
              initialOption: state.department?.name ?? 'Choose Department',
              options:
                  (state.clinics!).map((clinic) {
                    return clinic.name ?? 'wrong';
                  }).toList(),
              onSelected: (option, value) {
                if (value != null) {
                  _newAppointmentBloc.add(
                    NewAppointmentEvent.clinicDoctorsFetched(clinic: value),
                  );
                }
              },
            );
          },
        ),
        SizedBox(height: 10),
        BlocBuilder<NewAppointmentBloc, NewAppointmentState>(
          bloc: _newAppointmentBloc,
          builder: (context, state) {
            return CustomDropDownWidget<DoctorModel>(
              iniaialValue: state.doctor,
              values: state.doctors,
              onSelected: (option, value) {
                if (value != null) {
                  _newAppointmentBloc.add(
                    NewAppointmentEvent.doctorSelected(doctor: value),
                  );
                }
              },
              initialOption:
                  '${state.doctor?.firstName ?? 'Choose '} ${state.doctor?.lastName ?? 'a doctor'}',
              options:
                  state.doctors == null || state.doctors!.isEmpty
                      ? []
                      : state.doctors!.map((doctor) {
                        return '${doctor.firstName ?? 'No'} ${doctor.lastName ?? 'Doctor'}';
                      }).toList(),
            );
          },
        ),
      ],
    );
  }

  PreferredSize _buildBottomOfAppBar() {
    return PreferredSize(
      preferredSize: Size(screenWidth(context), screenHeight(context) * 0.08),
      child: SizedBox(
        width: screenWidth(context),
        height: screenHeight(context) * 0.09,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            children: [
              Expanded(
                child: SearchTextField(
                  onTap: _showSearchOverlay,
                  hintText: 'Search for the name of the doctor',
                  searchController: _searchController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSearchOverlay() {
    _newAppointmentBloc.add(AllDoctorsFetched());
    _isOverlayOpened = true;
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder:
          (context) => Stack(
            children: [
              // Semi-transparent background that covers entire screen
              Positioned.fill(
                child: GestureDetector(
                  onTap: () {
                    _overlayEntry?.remove();
                    Focus.of(context).unfocus();
                  },
                  child: Container(color: Colors.black.withValues(alpha: 0.5)),
                ),
              ),
              Positioned(
                top:
                    offset.dy +
                    kToolbarHeight +
                    (screenHeight(context) * 0.071),
                left: offset.dx + 0,
                right: offset.dx + 0,
                child: Material(
                  borderRadius: BorderRadius.circular(5),
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: [
                        SearchTextField(
                          onChange: (value) {
                            _newAppointmentBloc.add(
                              DoctorSearched(query: value),
                            );
                          },
                          searchController: _searchController,
                          hintText: 'Search for the name of the doctor',
                        ),
                        SizedBox(
                          height: screenHeight(context) * 0.5,
                          child: _buildListItems(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
    if (_overlayEntry != null) {
      overlay.insert(_overlayEntry!);
      _searchFocusNode.requestFocus();
    }
  }

  Widget _buildListItems() {
    return BlocBuilder<NewAppointmentBloc, NewAppointmentState>(
      bloc: _newAppointmentBloc,
      builder: (context, state) {
        return Skeletonizer(
          enabled: state.status!.isLoading,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            shrinkWrap: true,
            itemCount:
                (state.searchList ?? List.generate(4, (_) => DoctorModel()))
                    .length,
            itemBuilder: (_, index) {
              final doctor = (state.searchList ?? [])[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: DoctorCardWidget(
                  doctor: doctor,
                  isButton: false,
                  onTap: (doctor) async {
                    _newAppointmentBloc.add(
                      ClinicDoctorsFetched(
                        clinic: state.clinics!.firstWhere(
                          (clinic) => clinic.id == doctor.clinicId,
                        ),
                      ),
                    );
                    await for (final newState in _newAppointmentBloc.stream) {
                      if (newState.status!.isData) {
                        _newAppointmentBloc.add(DoctorSelected(doctor: doctor));
                        break;
                      }
                    }
                    _overlayEntry?.remove();
                    _isOverlayOpened = false;
                    Focus.of(context).unfocus();
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }

  late FocusNode _searchFocusNode;
  final _searchController = TextEditingController();
  late final NewAppointmentBloc _newAppointmentBloc;
  int? _currentSchedule;
  final _dateController = TextEditingController();
  OverlayEntry? _overlayEntry;
  bool _isOverlayOpened = false;
}
