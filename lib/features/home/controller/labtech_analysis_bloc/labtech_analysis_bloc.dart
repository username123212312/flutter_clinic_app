import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';

import '../../../../core/enums.dart';
import '../../repository/labtech_analysis_repository.dart';

part 'labtech_analysis_event.dart';
part 'labtech_analysis_state.dart';
part 'labtech_analysis_bloc.freezed.dart';

class LabtechAnalysisBloc
    extends Bloc<LabtechAnalysisEvent, LabtechAnalysisState> {
  LabtechAnalysisBloc({
    required LabtechAnalysisRepository labtechAnalysisRepository,
  }) : _labtechAnalysisRepository = labtechAnalysisRepository,
       super(LabtechAnalysisState.initial()) {
    on<LabtechAnalysisEvent>((event, emit) {
      if (state.runtimeType is! AnalysisStatusChanged) {
        emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
      }
    });
    on<AnalysisFetched>(_fetchAnalysis);
    on<AnalysisStatusChanged>((event, emit) {
      emit(state.copyWith(analysisStatus: event.analysisStatus));
      add(AnalysisFetched());
    });
  }

  Future<void> _fetchAnalysis(
    AnalysisFetched event,
    Emitter<LabtechAnalysisState> emit,
  ) async {
    try {
      final response = await _labtechAnalysisRepository.fetchAllAnalysis(
        state.analysisStatus,
      );

      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          analysisList: r.data ?? state.analysisList,
          status: DataStatus.data,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final LabtechAnalysisRepository _labtechAnalysisRepository;
}
