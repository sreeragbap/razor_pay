// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_statement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerStatementDetails _$$_CustomerStatementDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerStatementDetails(
      branchaddress1: json['branchaddress1'] as String?,
      branchaddress2: json['branchaddress2'] as String?,
      branchaddress3: json['branchaddress3'] as String?,
      branchaddress4: json['branchaddress4'] as String?,
      branchaddress5: json['branchaddress5'] as String?,
      accountholderName: json['accountholderName'] as String?,
      customerid: json['customerid'] as String?,
      branchName: json['branchName'] as String?,
      currentbalance: (json['currentbalance'] as num?)?.toDouble(),
      balance: (json['balance'] as num?)?.toDouble(),
      accountType: json['accountType'] as String?,
      accountNumber: json['accountNumber'] as String?,
    );

Map<String, dynamic> _$$_CustomerStatementDetailsToJson(
        _$_CustomerStatementDetails instance) =>
    <String, dynamic>{
      'branchaddress1': instance.branchaddress1,
      'branchaddress2': instance.branchaddress2,
      'branchaddress3': instance.branchaddress3,
      'branchaddress4': instance.branchaddress4,
      'branchaddress5': instance.branchaddress5,
      'accountholderName': instance.accountholderName,
      'customerid': instance.customerid,
      'branchName': instance.branchName,
      'currentbalance': instance.currentbalance,
      'balance': instance.balance,
      'accountType': instance.accountType,
      'accountNumber': instance.accountNumber,
    };

_$_CustomerStatementTransactions _$$_CustomerStatementTransactionsFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerStatementTransactions(
      transactionDate: json['transactionDate'] as String?,
      description: json['description'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      transactionType: json['transactionType'] as String?,
      transactionId: json['transactionId'] as int?,
    );

Map<String, dynamic> _$$_CustomerStatementTransactionsToJson(
        _$_CustomerStatementTransactions instance) =>
    <String, dynamic>{
      'transactionDate': instance.transactionDate,
      'description': instance.description,
      'amount': instance.amount,
      'transactionType': instance.transactionType,
      'transactionId': instance.transactionId,
    };
