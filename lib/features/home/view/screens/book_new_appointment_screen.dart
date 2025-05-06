import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:flutter_clinic_app/features/home/controller/doctors_list/doctors_list_bloc.dart';
import 'package:flutter_clinic_app/features/home/model/doctor_model.dart';
import 'package:flutter_clinic_app/features/home/view/widgets/doctor_card_widget.dart';
import 'package:flutter_clinic_app/features/home/view/widgets/search_text_field.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/utils.dart';

final List<String> _departments = [
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          
        ],
      ),
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

  int _dropDown1Value = 0;
  int _dropDown2Value = 0;
}
