import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/repository/clinics_doctors_repository.dart';

import '../../../../core/enums.dart';
import '../../model/clinic_model.dart';
import '../../model/doctor_model.dart';

part 'clinic_doctors_state.dart';
part 'clinic_doctors_cubit.freezed.dart';

class ClinicDoctorsCubit extends Cubit<ClinicDoctorsState> {
  ClinicDoctorsCubit({
    required ClinicsDoctorsRepository clinicsDoctorsRepository,
    required ClinicModel clinic,
  }) : _clinicsDoctorsRepository = clinicsDoctorsRepository,
       super(ClinicDoctorsState.initial(clinic: clinic));

  Future<void> fetchClinicDoctors() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _clinicsDoctorsRepository.fetchClinicDoctors(
        state.clinic.id ?? 0,
      );

      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          doctorsList: r.data ?? state.doctorsList,
          doctorsSearchList: r.data ?? state.doctorsList,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> searchClinicDoctors(String query) async {
    if (state.doctorsList.isNotEmpty) {
      try {
        List<DoctorModel> temp =
            state.doctorsList.where((doctor) {
              return ('${doctor.firstName ?? 'No'} ${doctor.lastName ?? 'Doctor'}')
                  .toLowerCase()
                  .contains(query.toLowerCase());
            }).toList();
        emit(state.copyWith(doctorsSearchList: temp));
      } catch (e) {
        emit(state.copyWith(status: DataStatus.error, message: e.toString()));
      }
    }
  }

  final ClinicsDoctorsRepository _clinicsDoctorsRepository;
}
