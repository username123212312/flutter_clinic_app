import 'dart:async';

import 'package:flutter_clinic_app/core/utils/utils.dart';
import 'package:flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:flutter_clinic_app/features/home/model/requests/add_analysis_request.dart';
import 'package:flutter_clinic_app/features/home/repository/analysis_repository.dart';
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
  }

  @override
  AnalysisListState? fromJson(Map<String, dynamic> json) {
    try {
      return AnalysisListState(
        analysisList:
            (json['analysisList'] as List).map((analysis) {
              return AnalysisModel.fromJson(analysis);
            }).toList(),
        status: json['status'],
      );
    } catch (e) {
      eLog(e.toString());
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
        'status': state.status,
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
    );
    final newState = switch (response) {
      Left(value: final l) => AnalysisListState(
        analysisList: state.analysisList,
        status: DataStatus.error,
      ),
      Right(value: final r) => AnalysisListState(
        analysisList:
            r.data == null
                ? state.analysisList
                : [r.data!, ...state.analysisList!],
        status: DataStatus.data,
      ),
    };
    emit(newState);
  }

  final AnalysisRepository _analysisRepository;
}
