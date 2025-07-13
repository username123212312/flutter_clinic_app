import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:our_flutter_clinic_app/core/navigation/app_route_constants.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/widgets/loading_overlay.dart';
import '../../../controller/clinics_cubit/clinics_cubit.dart';
import '../../../repository/clinics_doctors_repository.dart';
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

  @override
  void initState() {
    super.initState();
    _clinicsCubit = ClinicsCubit(
      clinicsDoctorsRepository: ClinicsDoctorsRepository(),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _clinicsCubit.fetchAllClinics();
    });
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
        toolbarHeight: screenHeight(context) * 0.12,
        backgroundColor: Pallete.grayScaleColor0,
        elevation: 0,
        iconTheme: IconThemeData(size: 24),
        centerTitle: true,
        title: Text(
          'All Departments',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontSize: 18,
            color: Pallete.grayScaleColor700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _clinicsCubit.fetchAllClinics();
            },
            icon: Icon(FontAwesomeIcons.arrowsRotate, size: 18),
          ),
        ],
      ),
      body: BlocConsumer<ClinicsCubit, ClinicsState>(
        bloc: _clinicsCubit,
        builder: (_, state) {
          if (state.clinics.isEmpty) {
            return Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/search.png',
                    width: screenWidth(context) * 0.6,
                    height: screenHeight(context) * 0.3,
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
            );
          }
          return Skeletonizer(
            enabled: state.status.isLoading,
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              itemCount: state.status.isLoading ? 8 : state.clinics.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 12,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                if (state.status.isLoading) {
                  return Department(
                    name: 'name',
                    iconPath: 'assets/images/logo.webp',
                  );
                }
                final clinic = state.clinics[index];
                return Department(
                  name: clinic.name ?? 'No clinic',
                  iconPath: 'assets/images/logo.webp',
                  onTap: () {
                    context.pushNamed(
                      AppRouteConstants.clinicDoctorsRouteName,
                      extra: clinic,
                    );
                  },
                );
              },
            ),
          );
        },
        listener: (_, state) {
          if (state.status.isError) {
            Fluttertoast.showToast(msg: state.message);
          }
        },
      ),
    );
  }

  late final ClinicsCubit _clinicsCubit;
}
