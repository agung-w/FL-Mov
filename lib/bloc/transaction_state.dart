part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.loaded(
      ApiResult<List<Transaction>> transactions) = _Loaded;
  const factory TransactionState.loading() = _Loading;
}
