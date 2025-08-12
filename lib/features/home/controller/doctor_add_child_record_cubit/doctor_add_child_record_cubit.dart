import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';
import '../../../../core/models/usermodel.dart';
import '../../model/requests/child_record_request.dart';
import '../../repository/doctor_child_record_repository.dart';

part 'doctor_add_child_record_state.dart';
part 'doctor_add_child_record_cubit.freezed.dart';

class DoctorAddChildRecordCubit extends Cubit<DoctorAddChildRecordState> {
  DoctorAddChildRecordCubit({
    required UserModel child,
    required DoctorChildRecordRepository doctorChildRecordRepository,
  }) : _doctorChildRecordRepository = doctorChildRecordRepository,
       super(DoctorAddChildRecordState.initial(child: child));
  Future<void> addChildRecord(ChildRecordRequest request) async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _doctorChildRecordRepository.addChildRecord(
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
