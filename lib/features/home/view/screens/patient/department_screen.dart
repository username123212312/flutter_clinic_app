import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/home/department.dart';
import '../../widgets/home/search.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/utils/general_utils.dart';

class AllDepartmentsScreen extends StatefulWidget {
  const AllDepartmentsScreen({super.key});

  @override
  State<AllDepartmentsScreen> createState() => _AllDepartmentsScreenState();
}

class _AllDepartmentsScreenState extends State<AllDepartmentsScreen> {
  String query = '';
  final TextEditingController _searchController = TextEditingController();

  final List<Department> allDepartments = [
    Department(name: 'Heart', iconPath: 'assets/icons/Cadiologist.png'),
    Department(name: 'Dental', iconPath: 'assets/icons/Dentists.png'),
    Department(name: 'Kidney', iconPath: 'assets/icons/Nephrologists.png'),
    Department(
      name: 'Stomach',
      iconPath: 'assets/icons/Gastroenterologists.png',
    ),
    Department(name: 'Lung', iconPath: 'assets/icons/Pulmonologists.png'),
    Department(name: 'Brain', iconPath: 'assets/icons/Neurologists.png'),
    Department(name: 'Mental', iconPath: 'assets/icons/Psychiatrists.png'),
    Department(name: 'Liver', iconPath: 'assets/icons/Hepatologists.png'),
  ];

  List<Department> get filteredDepartments {
    if (query.isEmpty) return allDepartments;
    return allDepartments
        .where((d) => d.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  void _showSearchDialog() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Search',
      barrierColor: Pallete.transparentColor,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, anim1, anim2) {
        return Material(
          type: MaterialType.transparency,
          child: Align(
            alignment: Alignment.topCenter,
            child: SearchDialog(
              controller: _searchController,
              hint: 'Search for the name of the department',
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
          'All Departments',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontSize: 20,
            color: Pallete.grayScaleColor700,
          ),
        ),
        actions: [
          IconButton(
            iconSize: 24,
            icon: const Icon(Icons.search, color: Pallete.grayScaleColor700),
            onPressed: _showSearchDialog,
          ),
        ],
      ),
      body:
          filteredDepartments.isEmpty
              ? Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/search.png',
                      width: screenWidth(context) * 0.8,
                      height: screenHeight(context) * 0.4,
                    ),
                    Text(
                      "No Departments found",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Pallete.black1,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              )
              : Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: GridView.builder(
                  itemCount: filteredDepartments.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return filteredDepartments[index];
                  },
                ),
              ),
    );
  }
}
