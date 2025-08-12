import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/vaccinationrecord.dart';

import '../../../../core/enums.dart';
import '../../../../core/models/usermodel.dart';
import '../../repository/doctor_child_vaccination_record_repository.dart';

part 'doctor_show_child_vaccine_records_state.dart';
part 'doctor_show_child_vaccine_records_cubit.freezed.dart';

class DoctorShowChildVaccineRecordsCubit
    extends Cubit<DoctorShowChildVaccineRecordsState> {
  DoctorShowChildVaccineRecordsCubit({
    required DoctorChildVaccinationRecordRepository
    doctorChildVaccinationRecordRepository,
    required UserModel child,
  }) : _doctorChildVaccinationRecordRepository =
           doctorChildVaccinationRecordRepository,
       super(DoctorShowChildVaccineRecordsState.initial(child: child));

  Future<void> fetchAllVacRecords() async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final response = await _doctorChildVaccinationRecordRepository
          .fetchAllRecords(state.child.id ?? -1);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          message: r.message,
          vaccinesRecords: r.data ?? state.vaccinesRecords,
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
