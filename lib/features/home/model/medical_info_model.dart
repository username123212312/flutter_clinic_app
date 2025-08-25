import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/prescription_model.dart';

part 'medical_info_model.freezed.dart';
part 'medical_info_model.g.dart';

@freezed
sealed class MedicalInfoModel with _$MedicalInfoModel {
  factory MedicalInfoModel({
    int? id,
    @JsonKey(name: 'note for the doctor') noteForTheDoctor,
    @JsonKey(name: 'note for the patient') noteForThePatient,
    String? symptoms,
    String? diagnosis,
    String? doctorNote,
    String? patientNote,
    PrescriptionModel? prescription,
  }) = _MedicalInfoModel;

  factory MedicalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalInfoModelFromJson(json);
}
