import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_failure.freezed.dart';

@freezed
class CustomerFailure with _$CustomerFailure {
  const factory CustomerFailure.dataNotFount() = _DataNotFount;
  const factory CustomerFailure.clientFailure() = _ClientFailure;
  const factory CustomerFailure.serverFailure() = _ServerFailure;
  const factory CustomerFailure.dataResponseStatus(String status) =
      _DataResponseStatus;
  const factory CustomerFailure.setteledaccount(String status) =
      _Setteledaccount;
}
