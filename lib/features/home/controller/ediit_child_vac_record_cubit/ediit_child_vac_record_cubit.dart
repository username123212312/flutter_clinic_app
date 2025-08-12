import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';
import '../../model/requests/doctor_edit_vac_record_request.dart';
import '../../model/vaccinationrecord.dart';
import '../../repository/doctor_child_vaccination_record_repository.dart';

part 'ediit_child_vac_record_state.dart';
part 'ediit_child_vac_record_cubit.freezed.dart';

class EdiitChildVacRecordCubit extends Cubit<EdiitChildVacRecordState> {
  EdiitChildVacRecordCubit({
    required VaccinationRecord vaccineRecord,
    required DoctorChildVaccinationRecordRepository
    doctorChildVaccinationRecordRepository,
  }) : _doctorChildVaccinationRecordRepository =
           doctorChildVaccinationRecordRepository,
       super(EdiitChildVacRecordState.initial(vaccineRecord: vaccineRecord));

  Future<void> modifyRecord(DoctorEditVacRecordRequest request) async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _doctorChildVaccinationRecordRepository
          .editVacRecordDetails(request);
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

  final DoctorChildVaccinationRecordRepository
  _doctorChildVaccinationRecordRepository;
}
