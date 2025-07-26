// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_chat_message_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateChatMessageRequest _$CreateChatMessageRequestFromJson(
  Map<String, dynamic> json,
) {
  return _CreateChatMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateChatMessageRequest {
  @JsonKey(name: "chat_id")
  int get chatId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this CreateChatMessageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateChatMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateChatMessageRequestCopyWith<CreateChatMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChatMessageRequestCopyWith<$Res> {
  factory $CreateChatMessageRequestCopyWith(
    CreateChatMessageRequest value,
    $Res Function(CreateChatMessageRequest) then,
  ) = _$CreateChatMessageRequestCopyWithImpl<$Res, CreateChatMessageRequest>;
  @useResult
  $Res call({@JsonKey(name: "chat_id") int chatId, String message});
}

/// @nodoc
class _$CreateChatMessageRequestCopyWithImpl<
  $Res,
  $Val extends CreateChatMessageRequest
>
    implements $CreateChatMessageRequestCopyWith<$Res> {
  _$CreateChatMessageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateChatMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chatId = null, Object? message = null}) {
    return _then(
      _value.copyWith(
            chatId:
                null == chatId
                    ? _value.chatId
                    : chatId // ignore: cast_nullable_to_non_nullable
                        as int,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateChatMessageRequestImplCopyWith<$Res>
    implements $CreateChatMessageRequestCopyWith<$Res> {
  factory _$$CreateChatMessageRequestImplCopyWith(
    _$CreateChatMessageRequestImpl value,
    $Res Function(_$CreateChatMessageRequestImpl) then,
  ) = __$$CreateChatMessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "chat_id") int chatId, String message});
}

/// @nodoc
class __$$CreateChatMessageRequestImplCopyWithImpl<$Res>
    extends
        _$CreateChatMessageRequestCopyWithImpl<
          $Res,
          _$CreateChatMessageRequestImpl
        >
    implements _$$CreateChatMessageRequestImplCopyWith<$Res> {
  __$$CreateChatMessageRequestImplCopyWithImpl(
    _$CreateChatMessageRequestImpl _value,
    $Res Function(_$CreateChatMessageRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateChatMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chatId = null, Object? message = null}) {
    return _then(
      _$CreateChatMessageRequestImpl(
        chatId:
            null == chatId
                ? _value.chatId
                : chatId // ignore: cast_nullable_to_non_nullable
                    as int,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateChatMessageRequestImpl implements _CreateChatMessageRequest {
  _$CreateChatMessageRequestImpl({
    @JsonKey(name: "chat_id") required this.chatId,
    required this.message,
  });

  factory _$CreateChatMessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateChatMessageRequestImplFromJson(json);

  @override
  @JsonKey(name: "chat_id")
  final int chatId;
  @override
  final String message;

  @override
  String toString() {
    return 'CreateChatMessageRequest(chatId: $chatId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChatMessageRequestImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chatId, message);

  /// Create a copy of CreateChatMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChatMessageRequestImplCopyWith<_$CreateChatMessageRequestImpl>
  get copyWith => __$$CreateChatMessageRequestImplCopyWithImpl<
    _$CreateChatMessageRequestImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateChatMessageRequestImplToJson(this);
  }
}

abstract class _CreateChatMessageRequest implements CreateChatMessageRequest {
  factory _CreateChatMessageRequest({
    @JsonKey(name: "chat_id") required final int chatId,
    required final String message,
  }) = _$CreateChatMessageRequestImpl;

  factory _CreateChatMessageRequest.fromJson(Map<String, dynamic> json) =
      _$CreateChatMessageRequestImpl.fromJson;

  @override
  @JsonKey(name: "chat_id")
  int get chatId;
  @override
  String get message;

  /// Create a copy of CreateChatMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateChatMessageRequestImplCopyWith<_$CreateChatMessageRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
