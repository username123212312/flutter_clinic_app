// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';

part 'analysis_model.freezed.dart';
part 'analysis_model.g.dart';

@freezed
sealed class AnalysisModel with _$AnalysisModel {
  factory AnalysisModel({
    @Default(0) int? id,
    required String name,
    String? description,
    AnalysisStatus? status,
    @JsonKey(name: 'result_file') String? resultFile,
    @JsonKey(name: 'result_photo') String? resultPhoto,
    String? clinic,
    @JsonKey(name: 'patient_first_name') String? patientFirstName,
    @JsonKey(name: 'patient_last_name') String? patientLastName,
    @JsonKey(name: 'patient_id') int? patientId,
    double? price,
    @JsonKey(name: 'payment status') PaymentStatus? paymentStatus,
  }) = _AnalysisModel;

  factory AnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$AnalysisModelFromJson(json);
}
