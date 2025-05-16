import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:flutter_clinic_app/features/home/controller/doctors_list/doctors_list_bloc.dart';
import 'package:flutter_clinic_app/features/home/view/widgets/doctor_card_widget.dart';
import 'package:flutter_clinic_app/features/home/view/widgets/search_text_field.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/utils.dart';

final List<String> _departments = [
  'Choose Department',
  'Heart',
  'Lung',
  'Brain',
  'Dental',
  'Kidney',
  'Mental',
  'Stomamch',
  'Liver',
];

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
    _doctorsListBloc = DoctorsListBloc();
  }

  @override
  void dispose() {
    _dateController.dispose();
    _searchFocusNode.dispose();
    _searchController.dispose();
    _doctorsListBloc.close();
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
              timeRange: TimeRange(
                TimeOfDay(hour: 10, minute: 30),
                TimeOfDay(hour: 11, minute: 30),
              ),
            ),
            SchedulesItemWidget(
              timeRange: TimeRange(
                TimeOfDay(hour: 11, minute: 30),
                TimeOfDay(hour: 12, minute: 30),
              ),
            ),
            SchedulesItemWidget(
              timeRange: TimeRange(
                TimeOfDay(hour: 12, minute: 30),
                TimeOfDay(hour: 13, minute: 30),
              ),
            ),
            SchedulesItemWidget(
              timeRange: TimeRange(
                TimeOfDay(hour: 14, minute: 30),
                TimeOfDay(hour: 15, minute: 30),
              ),
            ),
            SchedulesItemWidget(
              timeRange: TimeRange(
                TimeOfDay(hour: 15, minute: 30),
                TimeOfDay(hour: 16, minute: 30),
              ),
            ),
            SchedulesItemWidget(
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
        CustomDropDownWidget(
          initialOption: _departments[0],
          options: _departments,
          onSelected: (option) {
            _doctorsListBloc.add(Filter(filter: option));
          },
        ),
        SizedBox(height: 10),
        BlocBuilder<DoctorsListBloc, DoctorsListState>(
          bloc: _doctorsListBloc,
          builder: (context, state) {
            return CustomDropDownWidget(
              initialOption:
                  state.doctorsList.isEmpty
                      ? 'Choose a Doctor'
                      : state.doctorsList[0].name,
              options:
                  state.doctorsList.map((doctor) {
                    return doctor.name;
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
                            _doctorsListBloc.add(Searched(query: value));
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
    return BlocBuilder<DoctorsListBloc, DoctorsListState>(
      bloc: _doctorsListBloc,
      builder: (context, state) {
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          shrinkWrap: true,
          itemCount: state.doctorsList.length,
          itemBuilder: (_, index) {
            final doctor = state.doctorsList[index];
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
  late final DoctorsListBloc _doctorsListBloc;
  String _currentDate = 'Select Date';
  final _dateController = TextEditingController();
}

class SchedulesItemWidget extends StatefulWidget {
  const SchedulesItemWidget({super.key, required this.timeRange});
  final TimeRange timeRange;

  @override
  State<SchedulesItemWidget> createState() => _SchedulesItemWidgetState();
}

class _SchedulesItemWidgetState extends State<SchedulesItemWidget> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Pallete.buttonBG0),
      onPressed: () => _toggleSelected(),
      child: Text(
        widget.timeRange.toString(),
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: 11,
          color:
              _isSelected
                  ? Pallete.black1
                  : Pallete.black1.withValues(alpha: 0.5),
        ),
      ),
    );
  }

  void _toggleSelected() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }
}

class CustomDropDownWidget extends StatefulWidget {
  const CustomDropDownWidget({
    super.key,
    this.options,
    this.contentItem,
    this.onSelected,
    required this.initialOption,
  });
  final List<String>? options;
  final Widget? contentItem;
  final void Function(String option)? onSelected;

  final String initialOption;

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _rotationAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: _dropdownKey,
      onTap: _toggleDropdown,
      child: Container(
        width: screenWidth(context),
        height: screenHeight(context) * 0.06,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Pallete.buttonBG,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 14,
                  color: Pallete.grayScaleColor500,
                ),
                text: _selectedOption ?? widget.initialOption,
                children: [
                  TextSpan(
                    text: ' *',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 14,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            RotationTransition(
              turns: _rotationAnimation,
              child: Image.asset(
                'assets/icons/tabler_chevron-down.png',
                width: 35,
                height: 35,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _toggleDropdown() {
    if (_isDropdownOpen) {
      _animationController.animateTo(0.0);
      _closeDropdown();
    } else {
      _animationController.animateTo(0.5);
      _openDropdown();
    }
  }

  void _openDropdown() {
    final RenderBox renderBox =
        _dropdownKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    _overlayEntry = OverlayEntry(
      builder:
          (context) => Stack(
            children: [
              Positioned.fill(child: GestureDetector(onTap: _toggleDropdown)),
              Positioned(
                left: position.dx,
                top: position.dy + size.height + 4,
                width: size.width,
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: screenHeight(context) * 0.3,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      children:
                          (widget.options ?? []).map((option) {
                            return ListTile(
                              title: Text(
                                option,
                                style: Theme.of(
                                  context,
                                ).textTheme.titleSmall!.copyWith(
                                  fontSize: 14,
                                  color: Pallete.grayScaleColor500,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  _selectedOption = option;
                                });
                                if (widget.onSelected != null) {
                                  widget.onSelected!(option);
                                }
                                _toggleDropdown();
                              },
                            );
                          }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
    );

    Overlay.of(context).insert(_overlayEntry!);
    _isDropdownOpen = true;
  }

  void _closeDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    _isDropdownOpen = false;
  }

  late final AnimationController _animationController;
  late final Animation<double> _rotationAnimation;
  final _dropdownKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool _isDropdownOpen = false;
  String? _selectedOption;
}
