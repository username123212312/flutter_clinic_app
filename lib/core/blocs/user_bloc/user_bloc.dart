import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:our_flutter_clinic_app/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:our_flutter_clinic_app/core/providers/file_manager/file_manager.dart';
import 'package:our_flutter_clinic_app/features/auth/model/requests/auth_requests.dart';
import 'package:our_flutter_clinic_app/features/auth/model/requests/modify_password_request.dart';
import 'package:our_flutter_clinic_app/core/repositories/user_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../enums.dart';
import '../../models/modify_doctor_info_request.dart';
import '../../models/usermodel.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends HydratedBloc<UserEvent, UserState> {
  UserBloc({required AuthBloc authBloc, required UserRepository userRepository})
    : _authBloc = authBloc,
      _userRepository = userRepository,
      super(UserState.initial()) {
    on<UserEvent>((event, emit) async {
      emit(
        state.copyWith(status: UserStatus.loading, statusMessage: 'loading'),
      );
    });
    on<UserModified>(
      (event, emit) =>
          emit(state.copyWith(user: event.user, status: UserStatus.modified)),
    );
    on<UserLoggedInWithEmail>(_logUserIn);
    on<UserLoggedInWithPhone>(_logUserIn);
    on<UserRegisteredWithEmail>(_registerUser);
    on<UserRegisteredWithPhone>(_registerUser);
    on<UserLoggedOut>(_logUserOut);
    on<UserCompletedProfileData>(_completeUserProfileData);
    on<UserModifiedProfileData>(_modifyUserProfileData);
    on<UserModifiedPassword>(_modifyUserPassword);
    on<UserLoggedInWithGoogle>(_logUserInWithGoogle);
    on<AllChildrenFetched>(_fetchAllChildren);
    on<ChildAdded>(_addChild);
    on<ChildRemoved>(_removeChild);
    on<AccountSwitched>(_switchAccount);
    on<ProfileFetched>(_fetchProfile);
    on<DeleteFromSchedule>(_deleteFromSchedule);
    on<DoctorProfileModified>(_modifyDoctorProfile);
  }
  Future<void> _registerUser(UserEvent event, Emitter<UserState> emit) async {
    (state as _UserState).user;
    late final RegisterPatientRequest request;
    if (event is UserRegisteredWithEmail) {
      request = RegisterPatientRequest(
        email: state.user?.email,
        password: event.password,
        phone: null,
        passwordConfirmation: event.password,
      );
    } else if (event is UserRegisteredWithPhone) {
      request = RegisterPatientRequest(
        email: null,
        password: event.password,
        phone: state.user!.phone,
        passwordConfirmation: event.password,
      );
    }
    final response = await _userRepository.registerPatient(request);
    final newState = switch (response) {
      Right(value: final r) => state.copyWith(
        user: r.data ?? state.user,
        status: UserStatus.modified,
        statusMessage: r.message,
      ),
      Left(value: final l) => state.copyWith(
        user: state.user,
        status: UserStatus.error,
        statusMessage: l.message,
      ),
    };
    emit(newState);
    if (!state.status.isError) {
      _authBloc.add(
        UserAuthenticated(user: state.user!, token: state.user!.token!),
      );
    }
  }

  Future<void> _logUserIn(UserEvent event, Emitter<UserState> emit) async {
    late final LogPatientInRequest request;
    if (event is UserLoggedInWithEmail) {
      request = LogPatientInRequest(
        email: event.email,
        password: event.password,
        phone: null,
      );
    } else if (event is UserLoggedInWithPhone) {
      request = LogPatientInRequest(
        email: null,
        password: event.password,
        phone: event.phone,
      );
    }
    final response = await _userRepository.logUserIn(request);
    log(response.toString());
    final newState = switch (response) {
      Left(value: final l) => state.copyWith(
        user: state.user,
        status: UserStatus.error,
        statusMessage: l.message,
      ),
      Right(value: final r) => state.copyWith(
        user: r.data,
        status: UserStatus.modified,
        statusMessage: r.message,
      ),
    };
    emit(newState);

    if (!state.status.isError) {
      if (state.user != null) {
        _authBloc.add(
          UserAuthenticated(user: state.user!, token: state.user!.token!),
        );
      }
    }
  }

  Future<void> _logUserInWithGoogle(
    UserLoggedInWithGoogle event,
    Emitter<UserState> emit,
  ) async {
    final response = await _userRepository.logUserInWithGoogle();
    log(response.toString());
    final newState = switch (response) {
      Left(value: final l) => state.copyWith(
        user: state.user,
        status: UserStatus.error,
        statusMessage: l.message,
      ),
      Right(value: final r) => state.copyWith(
        user: r.data,
        status: UserStatus.modified,
        statusMessage: r.message,
      ),
    };
    emit(newState);

    if (!state.status.isError) {
      if (state.user != null) {
        _authBloc.add(
          UserAuthenticated(user: state.user!, token: state.user!.token!),
        );
      }
    }
  }

  Future<void> _logUserOut(UserEvent event, Emitter<UserState> emit) async {
    final response = await _userRepository.logUserOut();
    final newState = switch (response) {
      Left(value: final l) => state.copyWith(
        user: state.user,
        status: UserStatus.error,
        statusMessage: l.message,
      ),
      Right() => UserState.initial(),
    };
    emit(newState);
    if (!newState.status.isError) {
      _authBloc.add(UserReset());
      await FileManager.deleteAllStoredFiles();
    }
  }

  Future<void> _completeUserProfileData(
    UserCompletedProfileData event,
    Emitter<UserState> emit,
  ) async {
    late final CompleteUserInfoRequest request;
    request = CompleteUserInfoRequest(
      firstName: event.user.firstName,
      lastName: event.user.lastName,
      birthDate: event.user.birthDate,
      bloodType: event.user.bloodType,
      gender: event.user.gender,
      address: event.user.address,
    );
    final response = await _userRepository.completeUserInfo(request);
    final newState = switch (response) {
      Left(value: final l) => state.copyWith(
        user: state.user,
        status: UserStatus.error,
        statusMessage: l.message,
      ),
      Right(value: final r) => state.copyWith(
        user: state.user!.copyWith(
          firstName: r.data?.firstName,
          lastName: r.data?.lastName,
          birthDate: r.data?.birthDate,
          bloodType: r.data?.bloodType,
          gender: r.data?.gender,
          address: r.data?.address,
        ),
        statusMessage: r.message,
        status: UserStatus.modified,
      ),
    };
    emit(newState);
    if (!newState.status.isError) {
      _authBloc.add(
        UserAuthenticated(user: state.user!, token: state.user!.token!),
      );
    }
  }

  Future<void> _modifyUserProfileData(
    UserModifiedProfileData event,
    Emitter<UserState> emit,
  ) async {
    late final CompleteUserInfoRequest request;
    request = CompleteUserInfoRequest(
      firstName: event.user.firstName,
      lastName: event.user.lastName,
      birthDate: event.user.birthDate,
      bloodType: event.user.bloodType,
      gender: event.user.gender,
      address: event.user.address,
      email: event.user.email,
      phone: event.user.phone,
    );
    final response = await _userRepository.modifyUserInfo(request);
    final newState = switch (response) {
      Left(value: final l) => state.copyWith(
        user: state.user,
        status: UserStatus.error,
        statusMessage: l.message,
      ),
      Right(value: final r) => state.copyWith(
        user:
            state.user?.copyWith(
              firstName: r.data?.firstName,
              lastName: r.data?.lastName,
              birthDate: r.data?.birthDate,
              bloodType: r.data?.bloodType,
              gender: r.data?.gender,
              address: r.data?.address,
              email: r.data?.email,
              phone: r.data?.phone,
            ) ??
            UserModel(
              firstName: r.data?.firstName,
              lastName: r.data?.lastName,
              birthDate: r.data?.birthDate,
              bloodType: r.data?.bloodType,
              gender: r.data?.gender,
              address: r.data?.address,
              email: r.data?.email,
              phone: r.data?.phone,
            ),
        statusMessage: r.message,
        status: UserStatus.done,
      ),
    };
    emit(newState);
    if (!newState.status.isError) {
      add(AllChildrenFetched());
      if (state.currentChildId == null) {
        _authBloc.add(AuthEvent.userModified(user: state.user!));
      }
    }
  }

  Future<void> _modifyUserPassword(
    UserModifiedPassword event,
    Emitter<UserState> emit,
  ) async {
    late final ModifyPasswordRequest request;
    request = ModifyPasswordRequest(
      newPassword: event.newPassword,
      oldPassword: event.oldPassword,
    );
    final response = await _userRepository.modifyUserPassword(
      request,
      state.user?.role ?? Role.patient,
    );
    final newState = switch (response) {
      Left(value: final l) => state.copyWith(
        status: UserStatus.error,
        statusMessage: l.message,
      ),
      Right(value: final r) => state.copyWith(
        statusMessage: r.message,
        status: UserStatus.modified,
      ),
    };
    emit(newState);
    if (!state.status.isError) {
      add(ProfileFetched());
    }
  }

  Future<void> _fetchAllChildren(
    AllChildrenFetched event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(childrenListStatus: DataStatus.loading));
    try {
      final response = await _userRepository.fetchAllUserChildren();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          childrenListStatus: DataStatus.error,
          statusMessage: l.message,
          status: UserStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          childrenListStatus: DataStatus.data,
          children: r.data ?? state.children,
          statusMessage: r.message,
          status: UserStatus.modified,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(
          childrenListStatus: DataStatus.error,
          statusMessage: e.toString(),
          status: UserStatus.modified,
        ),
      );
    }
  }

  Future<void> _addChild(ChildAdded event, Emitter<UserState> emit) async {
    try {
      final response = await _userRepository.addChild(event.request);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          childrenListStatus: DataStatus.error,
          statusMessage: l.message,
          status: UserStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          childrenListStatus: DataStatus.done,
          statusMessage: r.message,
          status: UserStatus.modified,
        ),
      };
      emit(newState);
      if (state.childrenListStatus.isDone && !state.status.isError) {
        add(AllChildrenFetched());
      }
    } catch (e) {
      emit(
        state.copyWith(
          childrenListStatus: DataStatus.error,
          statusMessage: e.toString(),
          status: UserStatus.error,
        ),
      );
    }
  }

  Future<void> _removeChild(ChildRemoved event, Emitter<UserState> emit) async {
    try {
      final response = await _userRepository.deleteChild(event.childId);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          childrenListStatus: DataStatus.error,
          statusMessage: l.message,
          status: UserStatus.error,
        ),
        Right(value: final r) => state.copyWith(
          childrenListStatus: DataStatus.done,
          statusMessage: r.message,
          status: UserStatus.modified,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(
          childrenListStatus: DataStatus.error,
          statusMessage: e.toString(),
          status: UserStatus.error,
        ),
      );
    }
  }

  Future<void> _switchAccount(
    AccountSwitched event,
    Emitter<UserState> emit,
  ) async {
    final int? previousChildId = state.currentChildId;
    try {
      emit(state.copyWith(currentChildId: event.childId));
      final response = await _userRepository.showProfile();
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: UserStatus.error,
          statusMessage: l.message,
          currentChildId: previousChildId,
        ),
        Right(value: final r) => state.copyWith(
          status: UserStatus.modified,
          statusMessage: r.message,
          user: r.data,
        ),
      };
      emit(newState);
    } catch (e) {
      emit(
        state.copyWith(
          status: UserStatus.error,
          statusMessage: e.toString(),
          currentChildId: previousChildId,
        ),
      );
    }
  }

  Future<void> _fetchProfile(
    ProfileFetched event,
    Emitter<UserState> emit,
  ) async {
    try {
      final prevoiusUser = state.user;
      final response = await _userRepository.showProfile(
        state.user?.role ?? Role.patient,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: UserStatus.error,
          statusMessage: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: UserStatus.modified,
          statusMessage: r.message,
          user: r.data?.copyWith(
            email: prevoiusUser?.email,
            phone: prevoiusUser?.phone,
            id: prevoiusUser?.id,
            role: prevoiusUser?.role,
          ),
        ),
      };
      emit(newState);
      if (!newState.status.isError) {
        _authBloc.add(AuthEvent.userModified(user: state.user!));
      }
    } catch (e) {
      emit(
        state.copyWith(status: UserStatus.error, statusMessage: e.toString()),
      );
    }
  }

  Future<void> _deleteFromSchedule(
    DeleteFromSchedule event,
    Emitter<UserState> emit,
  ) async {
    try {
      final response = await _userRepository.deleteSchdule(
        scheduleId: event.scheduleId,
      );
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: UserStatus.error,
          statusMessage: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: UserStatus.modified,
          statusMessage: r.message,
        ),
      };
      emit(newState);
      if (!newState.status.isError) {
        add(ProfileFetched());
      }
    } catch (e) {
      emit(
        state.copyWith(status: UserStatus.error, statusMessage: e.toString()),
      );
    }
  }

  Future<void> _modifyDoctorProfile(
    DoctorProfileModified event,
    Emitter<UserState> emit,
  ) async {
    try {
      final response = await _userRepository.modifyDoctorInfo(event.request);
      final newState = switch (response) {
        Left(value: final l) => state.copyWith(
          status: UserStatus.error,
          statusMessage: l.message,
        ),
        Right(value: final r) => state.copyWith(
          status: UserStatus.modified,
          statusMessage: r.message,
        ),
      };
      emit(newState);
      if (!state.status.isError) {
        add(ProfileFetched());
      }
    } catch (e) {
      emit(
        state.copyWith(status: UserStatus.error, statusMessage: e.toString()),
      );
    }
  }

  @override
  UserState? fromJson(Map<String, dynamic> json) {
    try {
      return UserState(
        user: UserModel.fromJson(json['user']),
        children:
            (jsonDecode(json['children']) as List<dynamic>).map((child) {
              return UserModel.fromJson(child);
            }).toList(),
        childrenListStatus: DataStatus.values.firstWhere((status) {
          return status.name == json['childrenListStatus'];
        }),
        status: UserStatus.values.firstWhere((status) {
          return status.name == json['status'];
        }),
        currentChildId: json['currentChildId'],
        statusMessage: json['statusMessage'],
      );
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    try {
      return {
        'user': state.user?.toJson(),
        'status': state.status.name,
        'children': jsonEncode(
          state.children.map((child) {
            return child.toJson();
          }).toList(),
        ),
        'childrenListStatus': state.childrenListStatus.name,
        'currentChildId': state.currentChildId,
        'statusMessage': state.statusMessage,
      };
    } catch (e) {
      log('UserBlocError: ${e.toString()}');
      return null;
    }
  }

  final AuthBloc _authBloc;
  final UserRepository _userRepository;
}
