part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.getBalance() = _GetBalance;
  const factory WalletEvent.activate() = _Activate;
}
