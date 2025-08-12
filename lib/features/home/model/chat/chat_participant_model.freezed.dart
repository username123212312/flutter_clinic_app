// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_participant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatParticipantEntity _$ChatParticipantEntityFromJson(
  Map<String, dynamic> json,
) {
  return _ChatParticipantEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatParticipantEntity {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "chat_id")
  int get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  /// Serializes this ChatParticipantEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatParticipantEntityCopyWith<ChatParticipantEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatParticipantEntityCopyWith<$Res> {
  factory $ChatParticipantEntityCopyWith(
    ChatParticipantEntity value,
    $Res Function(ChatParticipantEntity) then,
  ) = _$ChatParticipantEntityCopyWithImpl<$Res, ChatParticipantEntity>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: "chat_id") int chatId,
    @JsonKey(name: "user_id") int userId,
    UserModel user,
  });

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatParticipantEntityCopyWithImpl<
  $Res,
  $Val extends ChatParticipantEntity
>
    implements $ChatParticipantEntityCopyWith<$Res> {
  _$ChatParticipantEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? userId = null,
    Object? user = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            chatId:
                null == chatId
                    ? _value.chatId
                    : chatId // ignore: cast_nullable_to_non_nullable
                        as int,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as int,
            user:
                null == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserModel,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatParticipantEntityImplCopyWith<$Res>
    implements $ChatParticipantEntityCopyWith<$Res> {
  factory _$$ChatParticipantEntityImplCopyWith(
    _$ChatParticipantEntityImpl value,
    $Res Function(_$ChatParticipantEntityImpl) then,
  ) = __$$ChatParticipantEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: "chat_id") int chatId,
    @JsonKey(name: "user_id") int userId,
    UserModel user,
  });

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatParticipantEntityImplCopyWithImpl<$Res>
    extends
        _$ChatParticipantEntityCopyWithImpl<$Res, _$ChatParticipantEntityImpl>
    implements _$$ChatParticipantEntityImplCopyWith<$Res> {
  __$$ChatParticipantEntityImplCopyWithImpl(
    _$ChatParticipantEntityImpl _value,
    $Res Function(_$ChatParticipantEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? userId = null,
    Object? user = null,
  }) {
    return _then(
      _$ChatParticipantEntityImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        chatId:
            null == chatId
                ? _value.chatId
                : chatId // ignore: cast_nullable_to_non_nullable
                    as int,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatParticipantEntityImpl implements _ChatParticipantEntity {
  _$ChatParticipantEntityImpl({
    required this.id,
    @JsonKey(name: "chat_id") required this.chatId,
    @JsonKey(name: "user_id") required this.userId,
    required this.user,
  });

  factory _$ChatParticipantEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatParticipantEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "chat_id")
  final int chatId;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'ChatParticipantEntity(id: $id, chatId: $chatId, userId: $userId, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatParticipantEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, chatId, userId, user);

  /// Create a copy of ChatParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatParticipantEntityImplCopyWith<_$ChatParticipantEntityImpl>
  get copyWith =>
      __$$ChatParticipantEntityImplCopyWithImpl<_$ChatParticipantEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatParticipantEntityImplToJson(this);
  }
}

abstract class _ChatParticipantEntity implements ChatParticipantEntity {
  factory _ChatParticipantEntity({
    required final int id,
    @JsonKey(name: "chat_id") required final int chatId,
    @JsonKey(name: "user_id") required final int userId,
    required final UserModel user,
  }) = _$ChatParticipantEntityImpl;

  factory _ChatParticipantEntity.fromJson(Map<String, dynamic> json) =
      _$ChatParticipantEntityImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "chat_id")
  int get chatId;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  UserModel get user;

  /// Create a copy of ChatParticipantEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatParticipantEntityImplCopyWith<_$ChatParticipantEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
