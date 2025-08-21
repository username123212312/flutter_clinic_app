import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/features/home/model/review_model.dart';

import '../../../../core/enums.dart';
import '../../model/doctor_model.dart';
import '../../model/requests/rate_doctor_request.dart';
import '../../repository/doctor_info_repository.dart';

part 'doctor_rate_state.dart';
part 'doctor_rate_cubit.freezed.dart';

class DoctorRateCubit extends Cubit<DoctorRateState> {
  DoctorRateCubit({
    required DoctorInfoRepository doctorInfoRepository,
    required DoctorModel doctor,
  }) : _doctorInfoRepository = doctorInfoRepository,
       super(DoctorRateState.initial(doctor));

  void addRating(double rate) {
    emit(state.copyWith(rate: rate));
  }

  void addComment(String comment) {
    emit(state.copyWith(comment: comment));
  }

  Future<void> rateDoctor(RateDoctorRequest request) async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _doctorInfoRepository.rateDoctor(request);
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

  Future<void> fetchDoctorRates() async {
    emit(state.copyWith(status: DataStatus.loading, message: 'Loading'));
    try {
      final response = await _doctorInfoRepository.fetchDoctorReviews(
        state.doctor.id ?? -1,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          message: l.message,
        ),
        Right(value: final r) => state.copyWith(
          reviews: r.data ?? state.reviews,
          status: DataStatus.data,
          message: r.message,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(state.copyWith(status: DataStatus.error, message: e.toString()));
    }
  }

  final DoctorInfoRepository _doctorInfoRepository;
}
