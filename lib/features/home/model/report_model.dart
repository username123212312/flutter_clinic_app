import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_model.freezed.dart';

@freezed
class ReportModel with _$ReportModel {
  factory ReportModel({required String type, required String description}) =
      _ReportModel;
}
