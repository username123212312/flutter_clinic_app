part of 'report_cubit.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState({
    required DataStatus status,
    required String message,
  }) = _ReportState;
  factory ReportState.initial() {
    return ReportState(status: DataStatus.noData, message: 'No data');
  }
}
