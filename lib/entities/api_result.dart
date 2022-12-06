import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T value) = Success<T>;
  const factory ApiResult.failed(String message) = Failed<T>;
}
