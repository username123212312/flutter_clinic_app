import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/medicine_model.dart';

part 'prescription_model.freezed.dart';
part 'prescription_model.g.dart';

@freezed
sealed class PrescriptionModel with _$PrescriptionModel {
  factory PrescriptionModel({
    int? id,
    String? note,
    List<MedicineModel>? medicines,
  }) = _PrescriptionModel;

  factory PrescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionModelFromJson(json);
}
