import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_models.freezed.dart';
part 'customer_models.g.dart';

@freezed
class CustomerAccountsModel with _$CustomerAccountsModel {
  const factory CustomerAccountsModel({
    required String? accountType,
    required double? balance,
    required String? accountNumber,
    required String? accountName,
    required double? intrestRate,
    required int? schemeId,
    required int? nominee,
    required int? status,
    required int? firmid,
    required int? branchid,
    required DateTime? depositDate,
    required String? customerId,
    required int? coApplicantRight,
  }) = _CustomerAccountsModel;

  factory CustomerAccountsModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerAccountsModelFromJson(json);
}

/////////////////////////Customer Other Bank DataModel///////////////////////////

@freezed
class CustomerOtherBankDataModel with _$CustomerOtherBankDataModel {
  factory CustomerOtherBankDataModel({
    required String? type,
    required String? customerBankName,
    required String? customerName,
    required String? ifscCode,
    required String? accountNumber,
    required String? branchName,
    required String? status,
  }) = _CustomerOtherBankDataModel;
  factory CustomerOtherBankDataModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerOtherBankDataModelFromJson(json);
}

@freezed
class CustomerNotificationModel with _$CustomerNotificationModel {
  const factory CustomerNotificationModel({
    required String? userId,
    required int? alertId,
    required String? type,
    required String? subject,
    required String? date,
    required String? description,
    required String? image,
  }) = _CustomerNotificationModel;

  factory CustomerNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerNotificationModelFromJson(json);
}

@freezed
class CustomerProfileModel with _$CustomerProfileModel {
  const factory CustomerProfileModel({
    required String? customerName,
    required String? mobileNumber1,
    required String? mobileNumber2,
    required String? houseName,
    required String? emailId,
    required int? shareCount,
    required String? locality,
    required int? pinNo,
    required String? district,
    required String? state,
    required String? countryName,
    required String? image,
  }) = _CustomerProfileModel;

  factory CustomerProfileModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerProfileModelFromJson(json);
}

@freezed
class CustomerScheduleTransactionModel with _$CustomerScheduleTransactionModel {
  const factory CustomerScheduleTransactionModel({
    required String? transactionType,
    required String? fromAccount,
    required String? toAccount,
    required String? date,
    required double? amount,
    required int? status,
    required int? rtId,
  }) = _CustomerScheduleTransactionModel;

  factory CustomerScheduleTransactionModel.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerScheduleTransactionModelFromJson(json);
}

/////////// account more info model/////////////////
@freezed
class AccountMoreInfoModel with _$AccountMoreInfoModel {
  const factory AccountMoreInfoModel(
      {required int? firmid,
      required int? branchid,
      required String? schemeName,
      required int? schemeId,
      required double? interest,
      required String? depositDate,
      required double? balance,
      required String? accountNumber,
      required String? customerName,
      required String? accountType,
      required int? nominee,
      required int? status,
      required String? customerId,
      required String? coApplicantid,
      required String? coApplicantName}) = _AccountMoreInfoModel;
  factory AccountMoreInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AccountMoreInfoModelFromJson(json);
}

class CustomerStatementSelectedDate {
  String? fromDate;
  String? toDate;
  CustomerStatementSelectedDate({
    required this.fromDate,
    required this.toDate,
  });
}
