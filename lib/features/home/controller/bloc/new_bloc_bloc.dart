import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_flutter_clinic_app/core/enums.dart';
import 'package:our_flutter_clinic_app/core/models/usermodel.dart';

import '../../repository/new_bloc_repository.dart';

part 'new_bloc_event.dart';
part 'new_bloc_state.dart';
part 'new_bloc_bloc.freezed.dart';

class NewBlocBloc extends Bloc<NewBlocEvent, NewBlocState> {
  NewBlocBloc({required NewBlocRepository newBlocRepository})
    : _newBlocRepository = newBlocRepository,
      super(NewBlocState.initial()) {
    on<NewBlocEvent>((event, emit) {
      emit(
        state.copyWith(status: DataStatus.loading, statusMessage: 'Loading'),
      );
    });
    on<Modified>(_modifyState);
  }

  Future<void> _modifyState(Modified event, Emitter<NewBlocState> emit) async {
    try {
      final response = await _newBlocRepository.modify(id: event.id);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: DataStatus.error,
          statusMessage: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: DataStatus.data,
          statusMessage: r.message,
          user: r.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(status: DataStatus.error, statusMessage: e.toString()),
      );
    }
  }

  final NewBlocRepository _newBlocRepository;
}
