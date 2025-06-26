import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/pharmacy_model.dart';

import '../../../../core/enums.dart';
import '../../repository/pharmacies_repository.dart';

part 'pharmacies_state.dart';
part 'pharmacies_cubit.freezed.dart';

class PharmaciesCubit extends Cubit<PharmaciesState> {
  PharmaciesCubit({required PharmaciesRepository pharmaciesRepository})
    : _pharmaciesRepository = pharmaciesRepository,
      super(PharmaciesState.initial());

  Future<void> fetchAllPharmacies() async {
    emit(state.copyWith(message: 'Loding', status: DataStatus.loading));
    try {
      final response = await _pharmaciesRepository.fetchAllPharmacies();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          pharmacies: r.data ?? state.pharmacies,
          message: r.message,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  Future<void> searchPharmacyByName(String query) async {
    emit(state.copyWith(message: 'Loding', status: DataStatus.loading));
    try {
      final response = await _pharmaciesRepository.searchPharmacyByName(query);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          pharmacies: r.data ?? state.pharmacies,
          message: r.message,
          status: DataStatus.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final PharmaciesRepository _pharmaciesRepository;
}
