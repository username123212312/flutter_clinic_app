import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clinic_app/features/home/model/doctor_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/dummy_data.dart';

part 'doctors_list_event.dart';
part 'doctors_list_state.dart';
part 'doctors_list_bloc.freezed.dart';

class DoctorsListBloc extends Bloc<DoctorsListEvent, DoctorsListState> {
  DoctorsListBloc() : super(_Initial(doctorsList: doctorsList)) {
    on<DoctorsListEvent>((event, emit) {
      emit(_Modified(doctorsList: doctorsList));
    });
    on<Fetched>((event, emit) {
      emit(_Modified(doctorsList: event.doctorsList));
    });
    on<Searched>((event, emit) {
      emit(state.copyWith(doctorsList: _searchItems(event.query)));
    });
    on<Filter>((event, emit) {
      emit(state.copyWith(doctorsList: _filterItems(event.filter)));
    });
  }

  List<DoctorModel> _filterItems(String filter) {
    log('searchingg');
    if (filter.isEmpty) {
      return state.doctorsList;
    }
    final temp =
        state.doctorsList
            .where(
              (item) =>
                  item.specality.toLowerCase().contains(filter.toLowerCase()),
            )
            .toList();
    return temp;
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
