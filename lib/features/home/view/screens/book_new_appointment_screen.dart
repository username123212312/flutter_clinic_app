import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/core/data/dummy_data.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:flutter_clinic_app/features/home/controller/new_appointment_bloc/new_appointment_bloc.dart';
import 'package:flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:flutter_clinic_app/features/home/repository/new_appointment_repository.dart';
import 'package:flutter_clinic_app/features/home/view/widgets/appointments/schedules_item_widget.dart';
import 'package:flutter_clinic_app/features/home/view/widgets/custom_drop_down_widget.dart';
import 'package:flutter_clinic_app/features/home/view/widgets/doctor_card_widget.dart';
import 'package:flutter_clinic_app/features/home/view/widgets/search_text_field.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/utils.dart';
import '../../model/doctor_model.dart';

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
            SizedBox(
              width: screenWidth(context),
              child: CustomElevatedButton(
                borderRadius: 32,
                title: 'Next',
                onTap: () {},
                fillColor: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
              ),
            ),
          ],
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
        GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.5,
            crossAxisSpacing: 10,
            mainAxisExtent: screenHeight(context) * 0.06,
            mainAxisSpacing: 10,
          ),
          shrinkWrap: true,
          children: [
            SchedulesItemWidget(
              onSelected: (newValue) {
                _newAppointmentBloc.add(NewAppointmentEvent.scheduleSelected());
              },
              timeRange: TimeRange(
                TimeOfDay(hour: 10, minute: 30),
                TimeOfDay(hour: 11, minute: 30),
              ),
            ),
            SchedulesItemWidget(
              onSelected: (newValue) {
                _newAppointmentBloc.add(NewAppointmentEvent.scheduleSelected());
              },
              timeRange: TimeRange(
                TimeOfDay(hour: 11, minute: 30),
                TimeOfDay(hour: 12, minute: 30),
              ),
            ),
            SchedulesItemWidget(
              onSelected: (newValue) {
                _newAppointmentBloc.add(NewAppointmentEvent.scheduleSelected());
              },
              timeRange: TimeRange(
                TimeOfDay(hour: 12, minute: 30),
                TimeOfDay(hour: 13, minute: 30),
              ),
            ),
            SchedulesItemWidget(
              onSelected: (newValue) {
                _newAppointmentBloc.add(NewAppointmentEvent.scheduleSelected());
              },
              timeRange: TimeRange(
                TimeOfDay(hour: 14, minute: 30),
                TimeOfDay(hour: 15, minute: 30),
              ),
            ),
            SchedulesItemWidget(
              onSelected: (newValue) {
                _newAppointmentBloc.add(NewAppointmentEvent.scheduleSelected());
              },
              timeRange: TimeRange(
                TimeOfDay(hour: 15, minute: 30),
                TimeOfDay(hour: 16, minute: 30),
              ),
            ),
            SchedulesItemWidget(
              onSelected: (newValue) {
                _newAppointmentBloc.add(NewAppointmentEvent.scheduleSelected());
              },
              timeRange: TimeRange(
                TimeOfDay(hour: 16, minute: 30),
                TimeOfDay(hour: 17, minute: 30),
              ),
            ),
          ],
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
        CustomTextField(
          onTap: () {
            _selectDate();
            _newAppointmentBloc.add(NewAppointmentEvent.dateSelected());
          },
          hintText: 'Select Date',
          keyboardType: TextInputType.datetime,
          readOnly: true,
          controller: _dateController,
          suffixIcon: Image.asset('assets/icons/ic_calendar.png'),
        ),
      ],
    );
  }

  _selectDate() async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
    if (date != null) {
      setState(() {
        _dateController.text = DateFormat.yMMMMEEEEd().format(date);
      });
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
                    NewAppointmentEvent.doctorsFetched(clinic: value),
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
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);

    OverlayEntry? overlayEntry;

    overlayEntry = OverlayEntry(
      builder:
          (context) => Stack(
            children: [
              // Semi-transparent background that covers entire screen
              Positioned.fill(
                child: GestureDetector(
                  onTap: () {
                    overlayEntry?.remove();
                  },
                  child: Container(color: Colors.black.withValues(alpha: 0.5)),
                ),
              ),
              // Search bar positioned at top
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
                            log('message');
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
    overlay.insert(overlayEntry);
    _searchFocusNode.requestFocus();
  }

  Widget _buildListItems() {
    return BlocBuilder<NewAppointmentBloc, NewAppointmentState>(
      bloc: _newAppointmentBloc,
      builder: (context, state) {
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          shrinkWrap: true,
          itemCount: (state.doctors ?? []).length,
          itemBuilder: (_, index) {
            final doctor = (state.doctors ?? [])[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: DoctorCardWidget(doctor: doctor),
            );
          },
        );
      },
    );
  }

  late FocusNode _searchFocusNode;
  final _searchController = TextEditingController();
  late final NewAppointmentBloc _newAppointmentBloc;
  String _currentDate = 'Select Date';
  final _dateController = TextEditingController();
  final List<ClinicModel> _departments = [];
}
