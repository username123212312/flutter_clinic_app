// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewBlocEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewBlocEvent()';
  }
}

/// @nodoc
class $NewBlocEventCopyWith<$Res> {
  $NewBlocEventCopyWith(NewBlocEvent _, $Res Function(NewBlocEvent) __);
}

/// @nodoc

class _Started implements NewBlocEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewBlocEvent.started()';
  }
}

/// @nodoc

class Modified implements NewBlocEvent {
  const Modified({required this.id});

  final int id;

  /// Create a copy of NewBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModifiedCopyWith<Modified> get copyWith =>
      _$ModifiedCopyWithImpl<Modified>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Modified &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'NewBlocEvent.modified(id: $id)';
  }
}

/// @nodoc
abstract mixin class $ModifiedCopyWith<$Res>
    implements $NewBlocEventCopyWith<$Res> {
  factory $ModifiedCopyWith(Modified value, $Res Function(Modified) _then) =
      _$ModifiedCopyWithImpl;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ModifiedCopyWithImpl<$Res> implements $ModifiedCopyWith<$Res> {
  _$ModifiedCopyWithImpl(this._self, this._then);

  final Modified _self;
  final $Res Function(Modified) _then;

  /// Create a copy of NewBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(Modified(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$NewBlocState {
  int get id;
  DataStatus get status;
  String get statusMessage;
  UserModel? get user;

  /// Create a copy of NewBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewBlocStateCopyWith<NewBlocState> get copyWith =>
      _$NewBlocStateCopyWithImpl<NewBlocState>(
          this as NewBlocState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewBlocState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status, statusMessage, user);

  @override
  String toString() {
    return 'NewBlocState(id: $id, status: $status, statusMessage: $statusMessage, user: $user)';
  }
}

/// @nodoc
abstract mixin class $NewBlocStateCopyWith<$Res> {
  factory $NewBlocStateCopyWith(
          NewBlocState value, $Res Function(NewBlocState) _then) =
      _$NewBlocStateCopyWithImpl;
  @useResult
  $Res call({int id, DataStatus status, String statusMessage, UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$NewBlocStateCopyWithImpl<$Res> implements $NewBlocStateCopyWith<$Res> {
  _$NewBlocStateCopyWithImpl(this._self, this._then);

  final NewBlocState _self;
  final $Res Function(NewBlocState) _then;

  /// Create a copy of NewBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? statusMessage = null,
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of NewBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc

class _NewBlocState implements NewBlocState {
  const _NewBlocState(
      {required this.id,
      required this.status,
      required this.statusMessage,
      this.user});

  @override
  final int id;
  @override
  final DataStatus status;
  @override
  final String statusMessage;
  @override
  final UserModel? user;

  /// Create a copy of NewBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewBlocStateCopyWith<_NewBlocState> get copyWith =>
      __$NewBlocStateCopyWithImpl<_NewBlocState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewBlocState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status, statusMessage, user);

  @override
  String toString() {
    return 'NewBlocState(id: $id, status: $status, statusMessage: $statusMessage, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$NewBlocStateCopyWith<$Res>
    implements $NewBlocStateCopyWith<$Res> {
  factory _$NewBlocStateCopyWith(
          _NewBlocState value, $Res Function(_NewBlocState) _then) =
      __$NewBlocStateCopyWithImpl;
  @override
  @useResult
  $Res call({int id, DataStatus status, String statusMessage, UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$NewBlocStateCopyWithImpl<$Res>
    implements _$NewBlocStateCopyWith<$Res> {
  __$NewBlocStateCopyWithImpl(this._self, this._then);

  final _NewBlocState _self;
  final $Res Function(_NewBlocState) _then;

  /// Create a copy of NewBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? statusMessage = null,
    Object? user = freezed,
  }) {
    return _then(_NewBlocState(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of NewBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
