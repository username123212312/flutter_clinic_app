import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/features/home/model/doctor_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctors_list_event.dart';
part 'doctors_list_state.dart';
part 'doctors_list_bloc.freezed.dart';

final List<DoctorModel> _doctorsList = List.generate(10, (index) {
  return DoctorModel(
    name: 'Jennifer Miller $index',
    specality: 'Pediatrician',
    rate: 4.8,
    availabilityTime: '10:30am - 5:30pm',
  );
});

class DoctorsListBloc extends Bloc<DoctorsListEvent, DoctorsListState> {
  DoctorsListBloc() : super(_Initial(doctorsList: _doctorsList)) {
    on<DoctorsListEvent>((event, emit) {
      emit(_Modified(doctorsList: _doctorsList));
    });
    on<Fetched>((event, emit) {
      emit(_Modified(doctorsList: event.doctorsList));
    });
    on<Searched>((event, emit) {
      emit(state.copyWith(doctorsList: _searchItems(event.query)));
    });
  }
  List<DoctorModel> _searchItems(String query) {
    log('searchingg');
    if (query.isEmpty) {
      return state.doctorsList;
    }
    final temp =
        state.doctorsList
            .where(
              (item) => item.name.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
    return temp;
  }
}
