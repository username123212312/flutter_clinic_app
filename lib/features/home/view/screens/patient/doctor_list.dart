import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../widgets/home/find_doctor_card.dart';
import '../../widgets/home/department_dropdown_filter.dart';
import '../../widgets/home/search.dart';

import '../../../../../core/theme/app_theme.dart';
import '../../../../../core/utils/general_utils.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  String query = '';
  String selectedDepartment = 'All';
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> allDoctors = [
    {
      "title": 'Jennifer Miller',
      "subtitle": 'Pediatrician',
      "imagePath": 'assets/icons/pro.avif',
      "rating": 4.8,
      "startTime": '10:30am',
      "endTime": '5:30pm',
    },
    {
      "title": 'John Doe',
      "subtitle": 'Cardiologist',
      "imagePath": 'assets/icons/pro.avif',
      "rating": 4.9,
      "startTime": '09:00am',
      "endTime": '4:00pm',
    },
  ];

  List<String> get allDepartments {
    final departments =
        allDoctors.map((doc) => doc['subtitle'] as String).toSet().toList();
    departments.insert(0, 'All');
    return departments;
  }

  List<Map<String, dynamic>> get filteredDoctors {
    final filtered =
        query.isEmpty
            ? allDoctors
            : allDoctors
                .where(
                  (doc) => doc['title'].toLowerCase().startsWith(
                    query.toLowerCase(),
                  ),
                )
                .toList();

    if (selectedDepartment == 'All') return filtered;
    return filtered
        .where((doc) => doc['subtitle'] == selectedDepartment)
        .toList();
  }

  void _showSearchDialog() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Search',
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, anim1, anim2) {
        return Material(
          type: MaterialType.transparency,
          child: Align(
            alignment: Alignment.topCenter,
            child: SearchDialog(
              controller: _searchController,
              hint: 'Search for the name of the doctor',
              onChanged: (value) => setState(() => query = value),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, _, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        backgroundColor: Pallete.grayScaleColor0,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Pallete.grayScaleColor700,
            size: 18,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'Doctors List',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontSize: 20,
            color: Pallete.grayScaleColor700,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Pallete.grayScaleColor700,
              size: 24,
            ),
            onPressed: _showSearchDialog,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DepartmentDropdownFilter(
                selectedDepartment: selectedDepartment,
                allDepartments: allDepartments,
                onChanged: (value) {
                  setState(() {
                    selectedDepartment = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: screenHeight(context) * 0.9,
              child:
                  filteredDoctors.isEmpty
                      ? Center(
                        child: Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(height: screenHeight(context) * 0.15),
                                Image.asset(
                                  'assets/images/search.png',
                                  width: screenWidth(context) * 0.7,
                                  height: screenHeight(context) * 0.3,
                                ),
                              ],
                            ),

                            Text(
                              "No doctors found",
                              style: Theme.of(
                                context,
                              ).textTheme.labelSmall!.copyWith(
                                color: Pallete.black1,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                      : SizedBox(
                        height: screenHeight(context) * 0.9,
                        child: ListView.separated(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(20),
                          itemCount: filteredDoctors.length,
                          separatorBuilder:
                              (context, index) => const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final doctor = filteredDoctors[index];
                            return FindDoctorCard(
                              padding: 25,
                              onTap: () {
                                context.pushNamed(
                                  AppRouteConstants.doctorInfoRouteName,
                                );
                              },
                              title: doctor['title'],
                              subtitle: doctor['subtitle'],
                              imagePath: doctor['imagePath'],
                              startTime: doctor['startTime'],
                              endTime: doctor['endTime'],
                              rating: doctor['rating'],
                            );
                          },
                        ),
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
