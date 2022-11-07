import 'package:freezed_annotation/freezed_annotation.dart';
part 'remove_scheduled_transaction_failure.freezed.dart';

@freezed
class RemoveScheduledTransactionFailure
    with _$RemoveScheduledTransactionFailure {
  const factory RemoveScheduledTransactionFailure.failed() = _Failed;
  const factory RemoveScheduledTransactionFailure.clientFailure() =
      _ClientFailure;
  const factory RemoveScheduledTransactionFailure.severFailure() =
      _SeverFailure;
}
