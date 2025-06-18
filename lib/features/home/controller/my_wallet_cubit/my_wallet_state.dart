part of 'my_wallet_cubit.dart';

@freezed
class MyWalletState with _$MyWalletState {
  const factory MyWalletState({
    required DataStatus status,
    required String message,
    String? clientSecret,
    String? paymentIntentId,
    double? walletRange,
  }) = _MyWalletState;

  factory MyWalletState.initial() {
    return MyWalletState(status: DataStatus.loading, message: 'No data');
  }
}
