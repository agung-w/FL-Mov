import 'package:freezed_annotation/freezed_annotation.dart';

part 'tresult.freezed.dart';

@freezed
class TResult<T> with _$TResult<T> {
  const factory TResult.success(T value) = Success<T>;
  const factory TResult.failed(String message) = Failed<T>;
}
