import 'dart:async';
import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/downloaded_file.dart';
import 'package:our_flutter_clinic_app/core/providers/file_manager/file_manager.dart';

import '../../model/analysis_model.dart';
import '../../model/requests/add_analysis_result_request.dart';
import '../../repository/labtech_analysis_repository.dart';

part 'labtech_analysis_info_event.dart';
part 'labtech_analysis_info__state.dart';
part 'labtech_analysis_info_bloc.freezed.dart';

class LabtechAnalysisInfoBloc
    extends HydratedBloc<LabtechAnalysisEvent, LabtechAnalysisInfoState> {
  LabtechAnalysisInfoBloc({
    required AnalysisModel analysis,
    required LabtechAnalysisRepository labtechAnalysisRepository,
  }) : _labtechAnalysisRepository = labtechAnalysisRepository,
       super(LabtechAnalysisInfoState.initial(analysis: analysis)) {
    on<LabtechAnalysisEvent>((event, emit) {
      emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    });
    on<AnalysisResultAdded>(_addAnalysisResult);
    on<DownloadFile>(_downloadFile);
    on<DownloadPhoto>(_downloadPhoto);
  }

  Future<void> _addAnalysisResult(
    AnalysisResultAdded event,
    Emitter<LabtechAnalysisInfoState> emit,
  ) async {
    try {
      final response = await _labtechAnalysisRepository.addAnalysisResult(
        event.request,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.done,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: 'Error'));
    }
  }

  final LabtechAnalysisRepository _labtechAnalysisRepository;

  Future<void> _downloadFile(
    DownloadFile event,
    Emitter<LabtechAnalysisInfoState> emit,
  ) async {
    try {
      final downloadedFile = await FileManager.downloadFile(
        state.analysis.resultFile ?? '',
      );
      emit(
        state.copyWith(downloadedFile: downloadedFile, status: DataStatus.done),
      );
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> _downloadPhoto(
    DownloadPhoto event,
    Emitter<LabtechAnalysisInfoState> emit,
  ) async {
    try {
      final downloadedFile = await FileManager.downloadFile(
        state.analysis.resultPhoto ?? '',
      );
      emit(
        state.copyWith(
          downloadedPhoto: downloadedFile,
          status: DataStatus.done,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  @override
  LabtechAnalysisInfoState? fromJson(Map<String, dynamic> json) {
    try {
      return LabtechAnalysisInfoState(
        analysis: AnalysisModel.fromJson(json['analysis']),
        message: json['message'],
        status: DataStatus.values.firstWhere(
          (status) => status.name == json['status'],
        ),
        downloadedFile:
            json['downloadedFile'] == null
                ? null
                : DownloadedFile.fromJson(json['downloadedFile']),
        downloadedPhoto:
            json['downloadedPhoto'] == null
                ? null
                : DownloadedFile.fromJson(json['downloadedPhoto']),
      );
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(LabtechAnalysisInfoState state) {
    try {
      return {
        'analysis': state.analysis.toJson(),
        'status': state.status.name,
        'message': state.message,
        'downloadedFile': state.downloadedFile?.toJson(),
        'downloadedPhoto': state.downloadedPhoto?.toJson(),
      };
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  String get id =>
      '${state.analysis.id.toString()}'
      '${state.downloadedFile?.fileName ?? 'no file'}'
      ' ${state.downloadedPhoto?.fileName ?? 'no photo'} '
      '${state.analysis.resultFile ?? 'no remote file'}'
      '${state.analysis.resultPhoto ?? 'no remote photo'}';
}
