import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';

import '../../../../core/enums.dart';
import '../../../../core/models/app_failure.dart';
import '../../../../core/models/app_response.dart';
import '../../model/clinic_model.dart';
import '../../repository/doctor_patient_analysis_repository.dart';

part 'doctor_patient_analysis_event.dart';
part 'doctor_patient_analysis_state.dart';
part 'doctor_patient_analysis_bloc.freezed.dart';

class DoctorPatientAnalysisBloc
    extends Bloc<DoctorPatientAnalysisEvent, DoctorPatientAnalysisState> {
  DoctorPatientAnalysisBloc({
    required UserModel patient,
    required DoctorPatientAnalysisRepository doctorPatientAnalysisRepository,
  }) : _doctorPatientAnalysisRepository = doctorPatientAnalysisRepository,
       super(DoctorPatientAnalysisState.initial(patient: patient)) {
    on<DoctorPatientAnalysisEvent>((event, emit) {
      if (event is! ClinicChanged &&
          event is! StatusChanged &&
          event is! ClinicsFetched) {
        emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
      }
    });
    on<ClinicsFetched>(_fetchClinics);
    on<AnalysisFetched>(_fetchAnalysis);
    on<StatusChanged>((event, emit) {
      emit(state.copyWith(analysisStatus: event.analysisStatus));
      add(AnalysisFetched());
    });
    on<ClinicChanged>((event, emit) {
      emit(state.copyWith(selectedClinic: event.clinic));
      add(AnalysisFetched());
    });
  }

  Future<void> _fetchClinics(
    ClinicsFetched event,
    Emitter<DoctorPatientAnalysisState> emit,
  ) async {
    emit(
      state.copyWith(
        clinicsStatus: DataStatus.loading,
        selectedClinic: ClinicModel(name: 'Select a clinic'),
      ),
    );
    try {
      final response = await _doctorPatientAnalysisRepository.showClinics();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          clinicsStatus: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          clinicsStatus: DataStatus.data,
          clinics: r.data ?? state.clinics,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(clinicsStatus: DataStatus.error, message: e.toString()),
      );
    }
  }

  Future<void> _fetchAnalysis(
    AnalysisFetched event,
    Emitter<DoctorPatientAnalysisState> emit,
  ) async {
    try {
      final Either<AppFailure, AppResponse<List<AnalysisModel>>> response;
      if (state.selectedClinic.id == null) {
        response = await _doctorPatientAnalysisRepository.fetchAnalysisByStatus(
          analysisStatus: state.analysisStatus,
          patientId: state.patient.id ?? -1,
        );
      } else {
        response = await _doctorPatientAnalysisRepository.fetchAnalysisByClinic(
          clinicId: state.selectedClinic.id ?? -1,
          patientId: state.patient.id ?? -1,
          analysisStatus: state.analysisStatus,
        );
      }
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          analysisList: r.data ?? state.analysisList,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final DoctorPatientAnalysisRepository _doctorPatientAnalysisRepository;
}
