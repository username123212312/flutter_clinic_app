import 'dart:async';

import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:our_flutter_clinic_app/features/home/model/requests/add_analysis_request.dart';
import 'package:our_flutter_clinic_app/features/home/repository/analysis_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../../core/enums.dart';

part 'analysis_list_event.dart';
part 'analysis_list_state.dart';
part 'analysis_list_bloc.freezed.dart';

class AnalysisListBloc
    extends HydratedBloc<AnalysisListEvent, AnalysisListState> {
  AnalysisListBloc({required AnalysisRepository analysisRepository})
    : _analysisRepository = analysisRepository,
      super(AnalysisListState.initial()) {
    on<AnalysisListEvent>((event, emit) {
      emit(
        AnalysisListState(
          status: DataStatus.loading,
          analysisList: state.analysisList,
        ),
      );
    });
    on<AnaysisAdded>(_addAnalysis);
    on<AnalysisFetchRequested>(_fetchAllAnalysis);
    on<AnalysisRemoved>(_removeAnalysis);
    on<AnalysisFilterRequested>(_filterAllAnalysis);
  }

  @override
  AnalysisListState? fromJson(Map<String, dynamic>? json) {
    try {
      return AnalysisListState(
        analysisList:
            (json?['analysisList'] as List).map((analysis) {
              return AnalysisModel.fromJson(analysis);
            }).toList(),
        status: DataStatus.values.byName(json?['status']),
      );
    } catch (e) {
      eLog('AnalysisBlocError: ${e.toString()}');
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AnalysisListState state) {
    try {
      return {
        'analysisList':
            state.analysisList?.map((e) {
              return e.toJson();
            }).toList(),
        'status': state.status.name,
      };
    } catch (e) {
      return null;
    }
  }

  FutureOr<void> _addAnalysis(
    AnaysisAdded event,
    Emitter<AnalysisListState> emit,
  ) async {
    final response = await _analysisRepository.addAnalysis(
      AddAnalysisRequest(
        name: event.analysis.name,
        description: event.analysis.description,
        resultFilePath: event.analysis.resultFile,
        resultImagePath: event.analysis.resultPhoto,
      ),
      onSendProgress: (progressValue) {
        if (progressValue == 1.0) {
          emit(state.copyWith(progressValue: 0.0, status: DataStatus.data));
        } else {
          emit(
            state.copyWith(
              progressValue: progressValue,
              status: DataStatus.uploading,
              statusMessage: 'uploading...',
            ),
          );
        }
      },
    );
    final newState = switch (response) {
      Left(value: final l) => AnalysisListState(
        analysisList: state.analysisList,
        status: DataStatus.error,
        statusMessage: l.message,
      ),
      Right() => AnalysisListState(
        analysisList: state.analysisList,
        status: DataStatus.data,
        statusMessage: 'Analysis uploaded successfully',
      ),
    };
    emit(newState);
  }

  Future<void> _fetchAllAnalysis(
    AnalysisFetchRequested event,
    Emitter<AnalysisListState> emit,
  ) async {
    final response = await _analysisRepository.fetchAllAnalysis();

    final newState = switch (response) {
      Left(value: final l) => AnalysisListState(
        analysisList: state.analysisList,
        status: DataStatus.error,
        statusMessage: l.message,
      ),
      Right(value: final r) => AnalysisListState(
        analysisList: r.data,
        status: DataStatus.data,
        statusMessage: r.message,
      ),
    };
    emit(newState);
  }

  _removeAnalysis(
    AnalysisRemoved event,
    Emitter<AnalysisListState> emit,
  ) async {
    final response = await _analysisRepository.deleteAnalysis(event.analysisId);
    final newState = switch (response) {
      Left(value: final l) => AnalysisListState(
        status: DataStatus.error,
        analysisList: state.analysisList,
        statusMessage: l.message,
        progressValue: state.progressValue,
      ),
      Right() => AnalysisListState(
        status: state.status,
        analysisList: state.analysisList,
        statusMessage: state.statusMessage,
        progressValue: state.progressValue,
      ),
    };
    add(AnalysisFetchRequested());
  }

  Future<void> _filterAllAnalysis(
    AnalysisFilterRequested event,
    Emitter<AnalysisListState> emit,
  ) async {
    final response = await _analysisRepository.filterAllAnalysis(
      event.analysisStatus,
    );
    final newState = switch (response) {
      Left(value: final l) => AnalysisListState(
        status: DataStatus.error,
        statusMessage: l.message,
        analysisList: state.analysisList,
        progressValue: state.progressValue,
      ),
      Right(value: final r) => AnalysisListState(
        status: DataStatus.data,
        analysisList: r.data,
        progressValue: state.progressValue,
        statusMessage: 'Analysis filtered successfully',
      ),
    };
    emit(newState);
  }

  final AnalysisRepository _analysisRepository;
}
