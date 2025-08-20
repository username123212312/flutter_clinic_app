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

  Future<void> fetchAllVacRecords([bool isRefresh = false]) async {
    try {
      if (state.hasMore || isRefresh) {
        final newPage = isRefresh ? 1 : state.currentPage + 1;
        final currentList = List.of(state.vaccinesRecords);
        if (newPage == 1) {
          emit(state.copyWith(status: DataStatus.loading));
        } else {
          emit(state.copyWith(status: DataStatus.loadingMore));
        }

        final response = await _doctorChildVaccinationRecordRepository
            .fetchAllRecords(state.child.id ?? -1, newPage);
        final newState = switch (response) {
          Left(value: final l) => state.copyWith(
            status: DataStatus.error,
            message: l.message,
          ),
          Right(value: final r) => state.copyWith(
            currentPage: newPage,
            hasMore: r.success,
            status: DataStatus.data,
            message: r.message,
            vaccinesRecords:
                r.data == null
                    ? state.vaccinesRecords
                    : newPage == 1
                    ? r.data!
                    : [...currentList, ...r.data!],
          ),
        };
        emit(newState);
      }
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final DoctorChildVaccinationRecordRepository
  _doctorChildVaccinationRecordRepository;
}
