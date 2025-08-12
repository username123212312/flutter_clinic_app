import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/child_record.dart';
import 'package:our_flutter_clinic_app/features/home/repository/doctor_child_record_repository.dart';

import '../../../../core/enums.dart';
import '../../../../core/models/usermodel.dart';

part 'doctor_show_child_record_state.dart';
part 'doctor_show_child_record_cubit.freezed.dart';

class DoctorShowChildRecordCubit extends Cubit<DoctorShowChildRecordState> {
  DoctorShowChildRecordCubit({
    required DoctorChildRecordRepository doctorChildRecordRepository,

    required UserModel child,
  }) : _doctorChildRecordRepository = doctorChildRecordRepository,
       super(DoctorShowChildRecordState.initial(child: child));

  Future<void> fetchChildRecord() async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _doctorChildRecordRepository.showChildRecord(
        state.child.id ?? -1,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          record: r.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final DoctorChildRecordRepository _doctorChildRecordRepository;
}
