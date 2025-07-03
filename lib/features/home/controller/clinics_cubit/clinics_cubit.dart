import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';
import '../../model/clinic_model.dart';
import '../../repository/clinics_doctors_repository.dart';

part 'clinics_state.dart';
part 'clinics_cubit.freezed.dart';

class ClinicsCubit extends Cubit<ClinicsState> {
  ClinicsCubit({required ClinicsDoctorsRepository clinicsDoctorsRepository})
    : _clinicsDoctorsRepository = clinicsDoctorsRepository,
      super(ClinicsState.initial());

  Future<void> fetchAllClinics() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _clinicsDoctorsRepository.fetchAllClinics();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          clinics: r.data ?? state.clinics,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final ClinicsDoctorsRepository _clinicsDoctorsRepository;
}
