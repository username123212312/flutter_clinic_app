import 'package:fluttertoast/fluttertoast.dart';
import 'package:our_flutter_clinic_app/core/navigation/navigation_exports.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../controller/clinic_doctors_cubit/clinic_doctors_cubit.dart';
import '../../../repository/clinics_doctors_repository.dart';
import '../../widgets/home/find_doctor_card.dart';
import '../../widgets/home/search.dart';

import '../../../../../core/utils/general_utils.dart';

class ClinicDoctorsScreen extends StatefulWidget {
  const ClinicDoctorsScreen({super.key, required this.clinic});
  final ClinicModel clinic;

  @override
  State<ClinicDoctorsScreen> createState() => _ClinicDoctorsScreenState();
}

class _ClinicDoctorsScreenState extends State<ClinicDoctorsScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _clinicDoctorsCubit = ClinicDoctorsCubit(
      clinicsDoctorsRepository: ClinicsDoctorsRepository(),
      clinic: widget.clinic,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _clinicDoctorsCubit.fetchClinicDoctors();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * 0.09,
        forceMaterialTransparency: true,
        backgroundColor: Pallete.grayScaleColor0,
        elevation: 0,
        iconTheme: IconThemeData(size: 24),
        centerTitle: true,
        title: Text(
          widget.clinic.name ?? 'No Clinic',
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
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        onRefresh: () async {
          _clinicDoctorsCubit.fetchClinicDoctors();
          _searchController.clear();
        },
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom * 0.3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocConsumer<ClinicDoctorsCubit, ClinicDoctorsState>(
                bloc: _clinicDoctorsCubit,
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
                  if (state.doctorsSearchList.isEmpty &&
                      !state.status.isLoading) {
                    return _buildEmpty();
                  }
                  return Skeletonizer(
                    effect: SoldColorEffect(color: Pallete.grayScaleColor300),
                    enabled: state.status.isLoading,
                    child: RefreshIndicator(
                      onRefresh: () async {
                        _clinicDoctorsCubit.fetchClinicDoctors();
                        _searchController.clear();
                      },
                      child: ListView.separated(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(20),
                        itemCount:
                            state.status.isLoading
                                ? 10
                                : state.doctorsSearchList.length,
                        separatorBuilder:
                            (context, index) => const SizedBox(height: 12),
                        itemBuilder: (context, index) {
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
                          final doctor = state.doctorsSearchList[index];
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
            child: BlocBuilder<ClinicDoctorsCubit, ClinicDoctorsState>(
              bloc: _clinicDoctorsCubit,
              builder: (context, state) {
                return SearchDialog(
                  controller: _searchController,
                  hint: 'Search for the name of the doctor',
                  onChanged: (value) {
                    if (value.trim().isNotEmpty) {
                      _clinicDoctorsCubit.searchClinicDoctors(value);
                    } else {
                      _clinicDoctorsCubit.fetchClinicDoctors();
                    }
                  },
                  onSubmitted: (p0) {
                    if (p0.trim().isNotEmpty) {
                      _clinicDoctorsCubit.searchClinicDoctors(p0);
                    } else {
                      _clinicDoctorsCubit.fetchClinicDoctors();
                    }
                  },
                );
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

  late final ClinicDoctorsCubit _clinicDoctorsCubit;
}
