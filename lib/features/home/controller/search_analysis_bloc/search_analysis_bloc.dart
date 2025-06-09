import 'dart:async';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';

import '../../repository/labtech_analysis_repository.dart';

part 'search_analysis_event.dart';
part 'search_analysis_state.dart';
part 'search_analysis_bloc.freezed.dart';

class SearchAnalysisBloc
    extends Bloc<SearchAnalysisEvent, SearchAnalysisState> {
  SearchAnalysisBloc({
    required LabtechAnalysisRepository labtechAnalysisRepository,
  }) : _labtechAnalysisRepository = labtechAnalysisRepository,
       super(SearchAnalysisState.initial()) {
    on<Searched>(_searchAnalysis, transformer: restartable());
  }

  Future<void> _searchAnalysis(
    Searched event,
    Emitter<SearchAnalysisState> emit,
  ) async {}

  final LabtechAnalysisRepository _labtechAnalysisRepository;
}
