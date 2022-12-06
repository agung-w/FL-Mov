part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;
  const factory WalletState.loaded(ApiResult<String> result) = _Loaded;
  const factory WalletState.loading() = _Loading;
}
