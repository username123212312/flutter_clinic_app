import 'package:fluttertoast/fluttertoast.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../controller/doctors_list_cubit/doctors_list_cubit.dart';
import '../../../repository/doctors_list_repository.dart';
import '../../widgets/home/find_doctor_card.dart';
import '../../widgets/home/department_dropdown_filter.dart';
import '../../widgets/home/search.dart';

import '../../../../../core/utils/general_utils.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _doctorsListCubit
      ..fetchAllClinics()
      ..fetchDoctors();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Pallete.grayScaleColor0,
        elevation: 0,
        iconTheme: IconThemeData(size: 24),
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
      body: RefreshIndicator(
        onRefresh: () async {
          _doctorsListCubit
            ..fetchAllClinics()
            ..fetchDoctors(true);
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Choose Department:',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Pallete.black1,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BlocBuilder<DoctorsListCubit, DoctorsListState>(
                  bloc: _doctorsListCubit,
                  builder: (context, state) {
                    return Skeletonizer(
                      effect: SoldColorEffect(color: Pallete.grayScaleColor300),
                      enabled: state.status.isLoading,
                      child: DepartmentDropdownFilter<ClinicModel>(
                        selectedDepartmentValue: state.selectedClinic,
                        allDepartmentsValue: state.clinics,
                        selectedDepartment:
                            state.selectedClinic?.name ?? 'No clinic',
                        allDepartments:
                            state.clinics.map((clinic) {
                              return clinic.name ?? 'no clinic';
                            }).toList(),
                        onChanged: (value) {
                          _doctorsListCubit.changeClinic(value);
                        },
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),

              BlocConsumer<DoctorsListCubit, DoctorsListState>(
                bloc: _doctorsListCubit,
                listener: (context, state) {
                  if (state.status.isError) {
                    showToast(
                      context: context,
                      type: ToastificationType.error,
                      msg: state.message,
                    );
                  }
                },
                builder: (context, state) {
                  if (state.doctors.isEmpty && !state.status.isLoading) {
                    return _buildEmpty();
                  }
                  return Skeletonizer(
                    effect: SoldColorEffect(color: Pallete.grayScaleColor300),
                    enabled: state.status.isLoading,
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(20),
                      itemCount:
                          state.status.isLoading
                              ? 10
                              : state.status.isLoadingMore
                              ? state.doctors.length + 1
                              : state.doctors.length,
                      separatorBuilder:
                          (context, index) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        if (state.status.isLoadingMore &&
                            index == state.doctors.length) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),

                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        if (state.status.isLoading) {
                          return FindDoctorCard(
                            padding: 25,
                            title: "doctor['title']",
                            subtitle: "doctor['subtitle']",
                            imagePath: 'assets/images/logo.webp',
                            visitDuration: '',
                            rating: 0.0,
                          );
                        }
                        final doctor = state.doctors[index];
                        return FindDoctorCard(
                          padding: 25,
                          onTap: () {
                            context.pushNamed(
                              extra: doctor,
                              AppRouteConstants.doctorInfoRouteName,
                            );
                          },
                          title:
                              '${doctor.firstName ?? 'No'} ${doctor.lastName ?? 'Doctor'}',
                          subtitle: doctor.speciality ?? 'No speciality',
                          imagePath: doctor.photo,
                          visitDuration: doctor.averageVisitDuration ?? '',
                          rating:
                              double.tryParse(
                                (doctor.finalRate ?? 0.0).toString(),
                              ) ??
                              0.0,
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Center _buildEmpty() {
    return Center(
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
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Pallete.black1,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
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
              onChanged: (value) {
                if (value.trim().isNotEmpty) {
                  _doctorsListCubit.searchDoctor(value);
                }
              },
              onSubmitted: (p0) {
                if (p0.trim().isNotEmpty) {
                  _doctorsListCubit.fetchDoctors();
                }
              },
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

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (!_doctorsListCubit.state.status.isLoading &&
          !_doctorsListCubit.state.status.isLoadingMore) {
        _doctorsListCubit.fetchDoctors();
      }
    }
  }

  final _scrollController = ScrollController();
  final DoctorsListCubit _doctorsListCubit = DoctorsListCubit(
    doctorsListRepository: DoctorsListRepository(),
  );
}
