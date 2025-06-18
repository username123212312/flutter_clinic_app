// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MyWalletState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get clientSecret => throw _privateConstructorUsedError;
  String? get paymentIntentId => throw _privateConstructorUsedError;
  double? get walletRange => throw _privateConstructorUsedError;

  /// Create a copy of MyWalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyWalletStateCopyWith<MyWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyWalletStateCopyWith<$Res> {
  factory $MyWalletStateCopyWith(
    MyWalletState value,
    $Res Function(MyWalletState) then,
  ) = _$MyWalletStateCopyWithImpl<$Res, MyWalletState>;
  @useResult
  $Res call({
    DataStatus status,
    String message,
    String? clientSecret,
    String? paymentIntentId,
    double? walletRange,
  });
}

/// @nodoc
class _$MyWalletStateCopyWithImpl<$Res, $Val extends MyWalletState>
    implements $MyWalletStateCopyWith<$Res> {
  _$MyWalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyWalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? clientSecret = freezed,
    Object? paymentIntentId = freezed,
    Object? walletRange = freezed,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DataStatus,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            clientSecret:
                freezed == clientSecret
                    ? _value.clientSecret
                    : clientSecret // ignore: cast_nullable_to_non_nullable
                        as String?,
            paymentIntentId:
                freezed == paymentIntentId
                    ? _value.paymentIntentId
                    : paymentIntentId // ignore: cast_nullable_to_non_nullable
                        as String?,
            walletRange:
                freezed == walletRange
                    ? _value.walletRange
                    : walletRange // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MyWalletStateImplCopyWith<$Res>
    implements $MyWalletStateCopyWith<$Res> {
  factory _$$MyWalletStateImplCopyWith(
    _$MyWalletStateImpl value,
    $Res Function(_$MyWalletStateImpl) then,
  ) = __$$MyWalletStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DataStatus status,
    String message,
    String? clientSecret,
    String? paymentIntentId,
    double? walletRange,
  });
}

/// @nodoc
class __$$MyWalletStateImplCopyWithImpl<$Res>
    extends _$MyWalletStateCopyWithImpl<$Res, _$MyWalletStateImpl>
    implements _$$MyWalletStateImplCopyWith<$Res> {
  __$$MyWalletStateImplCopyWithImpl(
    _$MyWalletStateImpl _value,
    $Res Function(_$MyWalletStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MyWalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? clientSecret = freezed,
    Object? paymentIntentId = freezed,
    Object? walletRange = freezed,
  }) {
    return _then(
      _$MyWalletStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DataStatus,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        clientSecret:
            freezed == clientSecret
                ? _value.clientSecret
                : clientSecret // ignore: cast_nullable_to_non_nullable
                    as String?,
        paymentIntentId:
            freezed == paymentIntentId
                ? _value.paymentIntentId
                : paymentIntentId // ignore: cast_nullable_to_non_nullable
                    as String?,
        walletRange:
            freezed == walletRange
                ? _value.walletRange
                : walletRange // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc

class _$MyWalletStateImpl implements _MyWalletState {
  const _$MyWalletStateImpl({
    required this.status,
    required this.message,
    this.clientSecret,
    this.paymentIntentId,
    this.walletRange,
  });

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final String? clientSecret;
  @override
  final String? paymentIntentId;
  @override
  final double? walletRange;

  @override
  String toString() {
    return 'MyWalletState(status: $status, message: $message, clientSecret: $clientSecret, paymentIntentId: $paymentIntentId, walletRange: $walletRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyWalletStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.paymentIntentId, paymentIntentId) ||
                other.paymentIntentId == paymentIntentId) &&
            (identical(other.walletRange, walletRange) ||
                other.walletRange == walletRange));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    clientSecret,
    paymentIntentId,
    walletRange,
  );

  /// Create a copy of MyWalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyWalletStateImplCopyWith<_$MyWalletStateImpl> get copyWith =>
      __$$MyWalletStateImplCopyWithImpl<_$MyWalletStateImpl>(this, _$identity);
}

abstract class _MyWalletState implements MyWalletState {
  const factory _MyWalletState({
    required final DataStatus status,
    required final String message,
    final String? clientSecret,
    final String? paymentIntentId,
    final double? walletRange,
  }) = _$MyWalletStateImpl;

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  String? get clientSecret;
  @override
  String? get paymentIntentId;
  @override
  double? get walletRange;

  /// Create a copy of MyWalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyWalletStateImplCopyWith<_$MyWalletStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
