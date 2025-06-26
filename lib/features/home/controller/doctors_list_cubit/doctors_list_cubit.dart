import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/clinic_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/doctor_model.dart';

import '../../../../core/enums.dart';
import '../../repository/doctors_list_repository.dart';

part 'doctors_list_state.dart';
part 'doctors_list_cubit.freezed.dart';

class DoctorsListCubit extends Cubit<DoctorsListState> {
  DoctorsListCubit({required DoctorsListRepository doctorsListRepository})
    : _doctorsListRepository = doctorsListRepository,
      super(DoctorsListState.initial());

  Future<void> fetchAllClinics() async {
    _emitLoading();
    try {
      final response = await _doctorsListRepository.fetchAllClinics();
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

  Future<void> fetchDoctors() async {
    if (state.selectedClinic == null || state.selectedClinic?.id == null) {
      fetchAllDoctors();
    } else {
      fetchClinicDoctors();
    }
  }

  Future<void> fetchAllDoctors() async {
    _emitLoading();
    try {
      final response = await _doctorsListRepository.fetchAllDoctors();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          doctors: r.data ?? state.doctors,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> fetchClinicDoctors() async {
    _emitLoading();
    try {
      final response = await _doctorsListRepository.fetchClinicDoctors(
        state.selectedClinic?.id ?? 0,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          doctors: r.data ?? state.doctors,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> searchDoctor(String query) async {
    _emitLoading();
    try {
      final response = await _doctorsListRepository.searchDoctor(query);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          doctors: r.data ?? state.doctors,
          selectedClinic: null,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  void changeClinic(ClinicModel clinic) {
    emit(state.copyWith(selectedClinic: clinic));
    fetchDoctors();
  }

  void _emitLoading() {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
  }

  final DoctorsListRepository _doctorsListRepository;
}
