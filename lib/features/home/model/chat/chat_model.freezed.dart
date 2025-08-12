// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatEntity _$ChatEntityFromJson(Map<String, dynamic> json) {
  return _ChatEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatEntity {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_private')
  int get isPrivate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message')
  ChatMessageEntity? get lastMessage => throw _privateConstructorUsedError;
  List<ChatParticipantEntity> get participants =>
      throw _privateConstructorUsedError;

  /// Serializes this ChatEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatEntityCopyWith<ChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEntityCopyWith<$Res> {
  factory $ChatEntityCopyWith(
    ChatEntity value,
    $Res Function(ChatEntity) then,
  ) = _$ChatEntityCopyWithImpl<$Res, ChatEntity>;
  @useResult
  $Res call({
    int id,
    String? name,
    @JsonKey(name: 'is_private') int isPrivate,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
    @JsonKey(name: 'last_message') ChatMessageEntity? lastMessage,
    List<ChatParticipantEntity> participants,
  });

  $ChatMessageEntityCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ChatEntityCopyWithImpl<$Res, $Val extends ChatEntity>
    implements $ChatEntityCopyWith<$Res> {
  _$ChatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? isPrivate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? lastMessage = freezed,
    Object? participants = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            isPrivate:
                null == isPrivate
                    ? _value.isPrivate
                    : isPrivate // ignore: cast_nullable_to_non_nullable
                        as int,
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
            lastMessage:
                freezed == lastMessage
                    ? _value.lastMessage
                    : lastMessage // ignore: cast_nullable_to_non_nullable
                        as ChatMessageEntity?,
            participants:
                null == participants
                    ? _value.participants
                    : participants // ignore: cast_nullable_to_non_nullable
                        as List<ChatParticipantEntity>,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageEntityCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $ChatMessageEntityCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatEntityImplCopyWith<$Res>
    implements $ChatEntityCopyWith<$Res> {
  factory _$$ChatEntityImplCopyWith(
    _$ChatEntityImpl value,
    $Res Function(_$ChatEntityImpl) then,
  ) = __$$ChatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String? name,
    @JsonKey(name: 'is_private') int isPrivate,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
    @JsonKey(name: 'last_message') ChatMessageEntity? lastMessage,
    List<ChatParticipantEntity> participants,
  });

  @override
  $ChatMessageEntityCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$ChatEntityImplCopyWithImpl<$Res>
    extends _$ChatEntityCopyWithImpl<$Res, _$ChatEntityImpl>
    implements _$$ChatEntityImplCopyWith<$Res> {
  __$$ChatEntityImplCopyWithImpl(
    _$ChatEntityImpl _value,
    $Res Function(_$ChatEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? isPrivate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? lastMessage = freezed,
    Object? participants = null,
  }) {
    return _then(
      _$ChatEntityImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        isPrivate:
            null == isPrivate
                ? _value.isPrivate
                : isPrivate // ignore: cast_nullable_to_non_nullable
                    as int,
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
        lastMessage:
            freezed == lastMessage
                ? _value.lastMessage
                : lastMessage // ignore: cast_nullable_to_non_nullable
                    as ChatMessageEntity?,
        participants:
            null == participants
                ? _value._participants
                : participants // ignore: cast_nullable_to_non_nullable
                    as List<ChatParticipantEntity>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatEntityImpl implements _ChatEntity {
  _$ChatEntityImpl({
    required this.id,
    this.name,
    @JsonKey(name: 'is_private') required this.isPrivate,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
    @JsonKey(name: 'last_message') this.lastMessage,
    required final List<ChatParticipantEntity> participants,
  }) : _participants = participants;

  factory _$ChatEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'is_private')
  final int isPrivate;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'last_message')
  final ChatMessageEntity? lastMessage;
  final List<ChatParticipantEntity> _participants;
  @override
  List<ChatParticipantEntity> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'ChatEntity(id: $id, name: $name, isPrivate: $isPrivate, createdAt: $createdAt, updatedAt: $updatedAt, lastMessage: $lastMessage, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            const DeepCollectionEquality().equals(
              other._participants,
              _participants,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    isPrivate,
    createdAt,
    updatedAt,
    lastMessage,
    const DeepCollectionEquality().hash(_participants),
  );

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatEntityImplCopyWith<_$ChatEntityImpl> get copyWith =>
      __$$ChatEntityImplCopyWithImpl<_$ChatEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatEntityImplToJson(this);
  }
}

abstract class _ChatEntity implements ChatEntity {
  factory _ChatEntity({
    required final int id,
    final String? name,
    @JsonKey(name: 'is_private') required final int isPrivate,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'updated_at') required final String updatedAt,
    @JsonKey(name: 'last_message') final ChatMessageEntity? lastMessage,
    required final List<ChatParticipantEntity> participants,
  }) = _$ChatEntityImpl;

  factory _ChatEntity.fromJson(Map<String, dynamic> json) =
      _$ChatEntityImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'is_private')
  int get isPrivate;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'last_message')
  ChatMessageEntity? get lastMessage;
  @override
  List<ChatParticipantEntity> get participants;

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatEntityImplCopyWith<_$ChatEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
