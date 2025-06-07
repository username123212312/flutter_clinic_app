import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/analysis_model.dart';

import '../../../../core/enums.dart';

part 'labtech_analysis_event.dart';
part 'labtech_analysis_state.dart';
part 'labtech_analysis_bloc.freezed.dart';

class LabtechAnalysisBloc
    extends Bloc<LabtechAnalysisEvent, LabtechAnalysisState> {
  LabtechAnalysisBloc() : super(LabtechAnalysisState.initial()) {
    on<LabtechAnalysisEvent>((event, emit) {});
  }
}
