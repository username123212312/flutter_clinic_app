// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatMessageEntity _$ChatMessageEntityFromJson(Map<String, dynamic> json) {
  return _ChatMessageEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageEntity {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "chat_id")
  int get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String get updatedAt => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  /// Serializes this ChatMessageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageEntityCopyWith<ChatMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageEntityCopyWith<$Res> {
  factory $ChatMessageEntityCopyWith(
    ChatMessageEntity value,
    $Res Function(ChatMessageEntity) then,
  ) = _$ChatMessageEntityCopyWithImpl<$Res, ChatMessageEntity>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: "chat_id") int chatId,
    @JsonKey(name: "user_id") int userId,
    String message,
    @JsonKey(name: "created_at") String createdAt,
    @JsonKey(name: "updated_at") String updatedAt,
    UserModel user,
  });

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMessageEntityCopyWithImpl<$Res, $Val extends ChatMessageEntity>
    implements $ChatMessageEntityCopyWith<$Res> {
  _$ChatMessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? userId = null,
    Object? message = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as String,
            user:
                null == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserModel,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatMessageEntity
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
abstract class _$$ChatMessageEntityImplCopyWith<$Res>
    implements $ChatMessageEntityCopyWith<$Res> {
  factory _$$ChatMessageEntityImplCopyWith(
    _$ChatMessageEntityImpl value,
    $Res Function(_$ChatMessageEntityImpl) then,
  ) = __$$ChatMessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: "chat_id") int chatId,
    @JsonKey(name: "user_id") int userId,
    String message,
    @JsonKey(name: "created_at") String createdAt,
    @JsonKey(name: "updated_at") String updatedAt,
    UserModel user,
  });

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatMessageEntityImplCopyWithImpl<$Res>
    extends _$ChatMessageEntityCopyWithImpl<$Res, _$ChatMessageEntityImpl>
    implements _$$ChatMessageEntityImplCopyWith<$Res> {
  __$$ChatMessageEntityImplCopyWithImpl(
    _$ChatMessageEntityImpl _value,
    $Res Function(_$ChatMessageEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? userId = null,
    Object? message = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
  }) {
    return _then(
      _$ChatMessageEntityImpl(
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
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as String,
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
class _$ChatMessageEntityImpl extends _ChatMessageEntity {
  _$ChatMessageEntityImpl({
    required this.id,
    @JsonKey(name: "chat_id") required this.chatId,
    @JsonKey(name: "user_id") required this.userId,
    required this.message,
    @JsonKey(name: "created_at") required this.createdAt,
    @JsonKey(name: "updated_at") required this.updatedAt,
    required this.user,
  }) : super._();

  factory _$ChatMessageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "chat_id")
  final int chatId;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  final String message;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String updatedAt;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'ChatMessageEntity(id: $id, chatId: $chatId, userId: $userId, message: $message, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    chatId,
    userId,
    message,
    createdAt,
    updatedAt,
    user,
  );

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageEntityImplCopyWith<_$ChatMessageEntityImpl> get copyWith =>
      __$$ChatMessageEntityImplCopyWithImpl<_$ChatMessageEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageEntityImplToJson(this);
  }
}

abstract class _ChatMessageEntity extends ChatMessageEntity {
  factory _ChatMessageEntity({
    required final int id,
    @JsonKey(name: "chat_id") required final int chatId,
    @JsonKey(name: "user_id") required final int userId,
    required final String message,
    @JsonKey(name: "created_at") required final String createdAt,
    @JsonKey(name: "updated_at") required final String updatedAt,
    required final UserModel user,
  }) = _$ChatMessageEntityImpl;
  _ChatMessageEntity._() : super._();

  factory _ChatMessageEntity.fromJson(Map<String, dynamic> json) =
      _$ChatMessageEntityImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "chat_id")
  int get chatId;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  String get message;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String get updatedAt;
  @override
  UserModel get user;

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageEntityImplCopyWith<_$ChatMessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
