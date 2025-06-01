import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_model.freezed.dart';
part 'medicine_model.g.dart';

@freezed
sealed class MedicineModel with _$MedicineModel {
  factory MedicineModel({
    int? id,
    String? name,
    String? dose,
    String? frequency,
    String? strength,
    String? until,
    String? whenToTake,
    String? note,
  }) = _MedicineModel;

  factory MedicineModel.fromJson(Map<String, dynamic> json) =>
      _$MedicineModelFromJson(json);
}
