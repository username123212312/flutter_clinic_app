import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/enums.dart';
import 'package:flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:flutter_clinic_app/core/navigation/fade_page_route_builder.dart';
import 'package:flutter_clinic_app/core/theme/app_pallete.dart';
import 'package:flutter_clinic_app/features/home/model/appointment_model.dart';
import 'package:flutter_clinic_app/features/home/model/doctor_model.dart';
import 'package:flutter_clinic_app/features/home/model/patient_model.dart';
import 'package:flutter_clinic_app/features/home/view/screens/appointment_details_screen.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/utils.dart';
import 'home_widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AppontmentsWidget extends StatefulWidget {
  const AppontmentsWidget({super.key});

  @override
  State<AppontmentsWidget> createState() => _AppontmentsWidgetState();
}

class _AppontmentsWidgetState extends State<AppontmentsWidget> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        _loadData();
      },
      child: CustomScrollView(
        slivers: [
          _buildThreeSelectable(),
          _items.isEmpty
              ? SliverToBoxAdapter(
                child: Center(
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
                        'Appointments still empty',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 16,
                          color: Pallete.oxfordBlue,
                        ),
                      ),
                      Text(
                        'Let\'s go to Mediverse for treatment!!!',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 12,
                          color: Pallete.sliverSand,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              : _isLoading
              ? SliverToBoxAdapter(
                child: Skeletonizer(
                  effect: ShimmerEffect(
                    // Animation duration
                  ),
                  child: _buildSkeletonList(),
                ),
              )
              : _buildList(),
        ],
      ),
    );
  }

  Widget _buildList() {
    return SliverAnimatedList(
      key: _listKey,
      initialItemCount: _items.length,
      itemBuilder:
          (_, index, animation) => _buildItem(_items[index], animation, index),
    );
  }

  Widget _buildSkeletonList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return AppointmentWidgetItem(
          title: 'title',
          subtitle: 'subtitle',
          date: DateTime.now(),
          timeRange: TimeRange(TimeOfDay.now(), TimeOfDay.now()),
          imagePath: 'assets/images/logo.webp',
        );
      },
    );
  }

  Widget _buildThreeSelectable() {
    return SliverAppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      elevation: 0,
      floating: true,
      collapsedHeight: screenHeight(context) * 0.101,
      toolbarHeight: screenHeight(context) * 0.1,
      title: ThreeSelectableWidget(
        titles: ['Pending', 'Finished', 'Canceled'],
        onChange: (newIndex) {
          _changeIndex(newIndex);

          log(newIndex.toString());
          _loadData();
        },
      ),
    );
  }

  Widget _buildItem(String item, Animation<double> animation, int index) {
    return ScaleTransition(
      scale: animation,
      child: AppointmentWidgetItem(
        title: 'dr. Kureha Yasmin $index',
        subtitle: 'Internal Medicine Specialist',
        timeRange: TimeRange(
          TimeOfDay(hour: 11, minute: 00),
          TimeOfDay(hour: 12, minute: 00),
        ),
        onTap: () {
          Navigator.of(context).push(
            FadePageRouteBuilder(
              AppointmentDetailsScreen(
                appointment: AppointmentModel(
                  service: 'Consultation',
                  doctor: DoctorModel(
                    name: 'dr. Kureha Yasmin $index',
                    specality: 'Internal Medicine Specialist',
                  ),
                  department: 'Klinik First Care',
                  dateAndTime: DateTime.now(),
                  patient: PatientModel(name: 'Ahmad Zakaria'),
                  appointmentStatus: _currentStatus,
                ),
              ),
            ),
          );
        },

        date: DateTime(2022, 5, 20),
        imagePath: _items[index],
      ),
    );
  }

  void _addItem() {
    final int newIndex = _items.length;
    _items.add('assets/images/logo.webp');
    _listKey.currentState?.insertItem(newIndex);
  }

  void _removeItem({int? index}) {
    final int removeIndex = index ?? _items.length - 1;

    // Add bounds checking
    if (removeIndex < 0 || removeIndex >= _items.length) {
      return; // Don't attempt to remove if index is invalid
    }

    final String removedItem = _items[removeIndex];
    setState(() {
      _items.removeAt(removeIndex);
    });

    _listKey.currentState?.removeItem(
      removeIndex,
      (context, animation) => _buildItem(removedItem, animation, removeIndex),
      duration: const Duration(milliseconds: 300),
    );
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });
    // Simulate network delay
    await Future.delayed(Duration(seconds: 3));
    _items.clear();

    for (int i = 0; i < 10; i++) {
      _addItem();
    }
    setState(() {
      _isLoading = false;
    });
  }

  void _changeIndex(int newIndex) {
    switch (newIndex) {
      case 0:
        _currentStatus = AppointmentStatus.pending;
        break;
      case 1:
        _currentStatus = AppointmentStatus.finished;
        break;
      case 2:
        _currentStatus = AppointmentStatus.canceled;
        break;
    }
    setState(() {});
  }

  AppointmentStatus _currentStatus = AppointmentStatus.pending;
  bool _isLoading = true;

  final GlobalKey<SliverAnimatedListState> _listKey =
      GlobalKey<SliverAnimatedListState>();
  final List<String> _items = [];

  //  [
  //   'assets/images/logo.webp',
  //   'assets/images/logo.webp',
  //   'assets/images/logo.webp',
  //   'assets/images/logo.webp',
  // ];
}
