import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/repository/doctor_child_record_repository.dart';

import '../../../../core/enums.dart';
import '../../model/child_record.dart';
import '../../model/requests/child_record_request.dart';

part 'modify_child_record_state.dart';
part 'modify_child_record_cubit.freezed.dart';

class ModifyChildRecordCubit extends Cubit<ModifyChildRecordState> {
  ModifyChildRecordCubit({
    required DoctorChildRecordRepository doctorChildRecordRepository,
    required ChildRecord record,
  }) : _doctorChildRecordRepository = doctorChildRecordRepository,
       super(ModifyChildRecordState.initial(record: record));

  Future<void> modifyChildRecord(ChildRecordRequest request) async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _doctorChildRecordRepository.editChildRecord(
        request,
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
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final DoctorChildRecordRepository _doctorChildRecordRepository;
}
