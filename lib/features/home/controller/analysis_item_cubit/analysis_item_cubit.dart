import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/downloaded_file.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';
import 'package:our_flutter_clinic_app/features/home/repository/analysis_item_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'analysis_item_state.dart';
part 'analysis_item_cubit.freezed.dart';

class AnalysisItemCubit extends HydratedCubit<AnalysisItemState> {
  AnalysisItemCubit({
    required this.cubitId,
    required AnalysisItemRepository analysisItemRepository,
    required AnalysisModel analysis,
  }) : _analysisItemRepository = analysisItemRepository,
       super(AnalysisItemState(analysis: analysis, status: DataStatus.data));

  Future<void> downloadAnalysis() async {
    String uploadingFilePath;
    if (state.analysis!.resultFile == null) {
      uploadingFilePath = state.analysis!.resultPhoto!;
    } else {
      uploadingFilePath = state.analysis!.resultFile!;
    }
    final response = await _analysisItemRepository.downloadFile(
      uploadingFilePath,
      (value) {
        emit(
          AnalysisItemState(
            status: DataStatus.downloading,
            analysis: state.analysis,
            downloadProgress: value,
          ),
        );
      },
    );
    final newState = switch (response) {
      Left() => AnalysisItemState(
        status: DataStatus.error,
        analysis: state.analysis,
      ),
      Right(value: final r) => AnalysisItemState(
        status: DataStatus.data,
        analysis: state.analysis,
        downloadedAnalysis: r,
      ),
    };
    eLog(newState);
    emit(newState);
  }

  final AnalysisItemRepository _analysisItemRepository;

  @override
  AnalysisItemState? fromJson(Map<String, dynamic>? json) {
    try {
      return AnalysisItemState(
        status: DataStatus.values.byName(json?['status']),
        analysis: AnalysisModel.fromJson(json?['analysis']),
        downloadProgress: json?['downloadProgress'],
        downloadedAnalysis:
            json?['downloadedAnalysis'] == null
                ? null
                : DownloadedFile.fromJson(json!['downloadedAnalysis']),
      );
    } catch (e) {
      eLog(e.toString());
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AnalysisItemState state) {
    try {
      return {
        'status': state.status.name,
        'analysis': state.analysis?.toJson(),
        'downloadProgress': state.downloadProgress,
        'downloadedAnalysis': state.downloadedAnalysis?.toJson(),
      };
    } catch (e) {
      eLog(e.toString());
      return null;
    }
  }

  @override
  String get id => cubitId;

  final String cubitId;
}
