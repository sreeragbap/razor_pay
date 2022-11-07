import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_statement_model.freezed.dart';
part 'customer_statement_model.g.dart';

@freezed
class CustomerStatementDetails with _$CustomerStatementDetails {
  const factory CustomerStatementDetails(
      {required String? branchaddress1,
      required String? branchaddress2,
      required String? branchaddress3,
      required String? branchaddress4,
      required String? branchaddress5,
      required String? accountholderName,
      required String? customerid,
      required String? branchName,
      required double? currentbalance,
      required double? balance,
      required String? accountType,
      required String? accountNumber}) = _CustomerStatementDetails;

  factory CustomerStatementDetails.fromJson(Map<String, dynamic> json) =>
      _$CustomerStatementDetailsFromJson(json);
}

@freezed
class CustomerStatementTransactions with _$CustomerStatementTransactions {
  const factory CustomerStatementTransactions({
    required String? transactionDate,
    required String? description,
    required double? amount,
    required String? transactionType,
    required int? transactionId,
  }) = _CustomerStatementTransactions;

  factory CustomerStatementTransactions.fromJson(Map<String, dynamic> json) =>
      _$CustomerStatementTransactionsFromJson(json);
}
