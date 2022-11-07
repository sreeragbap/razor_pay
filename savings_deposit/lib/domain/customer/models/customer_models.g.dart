// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerAccountsModel _$$_CustomerAccountsModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerAccountsModel(
      accountType: json['accountType'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
      accountNumber: json['accountNumber'] as String?,
      accountName: json['accountName'] as String?,
      intrestRate: (json['intrestRate'] as num?)?.toDouble(),
      schemeId: json['schemeId'] as int?,
      nominee: json['nominee'] as int?,
      status: json['status'] as int?,
      firmid: json['firmid'] as int?,
      branchid: json['branchid'] as int?,
      depositDate: json['depositDate'] == null
          ? null
          : DateTime.parse(json['depositDate'] as String),
      customerId: json['customerId'] as String?,
      coApplicantRight: json['coApplicantRight'] as int?,
    );

Map<String, dynamic> _$$_CustomerAccountsModelToJson(
        _$_CustomerAccountsModel instance) =>
    <String, dynamic>{
      'accountType': instance.accountType,
      'balance': instance.balance,
      'accountNumber': instance.accountNumber,
      'accountName': instance.accountName,
      'intrestRate': instance.intrestRate,
      'schemeId': instance.schemeId,
      'nominee': instance.nominee,
      'status': instance.status,
      'firmid': instance.firmid,
      'branchid': instance.branchid,
      'depositDate': instance.depositDate?.toIso8601String(),
      'customerId': instance.customerId,
      'coApplicantRight': instance.coApplicantRight,
    };

_$_CustomerOtherBankDataModel _$$_CustomerOtherBankDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerOtherBankDataModel(
      type: json['type'] as String?,
      customerBankName: json['customerBankName'] as String?,
      customerName: json['customerName'] as String?,
      ifscCode: json['ifscCode'] as String?,
      accountNumber: json['accountNumber'] as String?,
      branchName: json['branchName'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_CustomerOtherBankDataModelToJson(
        _$_CustomerOtherBankDataModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'customerBankName': instance.customerBankName,
      'customerName': instance.customerName,
      'ifscCode': instance.ifscCode,
      'accountNumber': instance.accountNumber,
      'branchName': instance.branchName,
      'status': instance.status,
    };

_$_CustomerNotificationModel _$$_CustomerNotificationModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerNotificationModel(
      userId: json['userId'] as String?,
      alertId: json['alertId'] as int?,
      type: json['type'] as String?,
      subject: json['subject'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_CustomerNotificationModelToJson(
        _$_CustomerNotificationModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'alertId': instance.alertId,
      'type': instance.type,
      'subject': instance.subject,
      'date': instance.date,
      'description': instance.description,
      'image': instance.image,
    };

_$_CustomerProfileModel _$$_CustomerProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerProfileModel(
      customerName: json['customerName'] as String?,
      mobileNumber1: json['mobileNumber1'] as String?,
      mobileNumber2: json['mobileNumber2'] as String?,
      houseName: json['houseName'] as String?,
      emailId: json['emailId'] as String?,
      shareCount: json['shareCount'] as int?,
      locality: json['locality'] as String?,
      pinNo: json['pinNo'] as int?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      countryName: json['countryName'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_CustomerProfileModelToJson(
        _$_CustomerProfileModel instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'mobileNumber1': instance.mobileNumber1,
      'mobileNumber2': instance.mobileNumber2,
      'houseName': instance.houseName,
      'emailId': instance.emailId,
      'shareCount': instance.shareCount,
      'locality': instance.locality,
      'pinNo': instance.pinNo,
      'district': instance.district,
      'state': instance.state,
      'countryName': instance.countryName,
      'image': instance.image,
    };

_$_CustomerScheduleTransactionModel
    _$$_CustomerScheduleTransactionModelFromJson(Map<String, dynamic> json) =>
        _$_CustomerScheduleTransactionModel(
          transactionType: json['transactionType'] as String?,
          fromAccount: json['fromAccount'] as String?,
          toAccount: json['toAccount'] as String?,
          date: json['date'] as String?,
          amount: (json['amount'] as num?)?.toDouble(),
          status: json['status'] as int?,
          rtId: json['rtId'] as int?,
        );

Map<String, dynamic> _$$_CustomerScheduleTransactionModelToJson(
        _$_CustomerScheduleTransactionModel instance) =>
    <String, dynamic>{
      'transactionType': instance.transactionType,
      'fromAccount': instance.fromAccount,
      'toAccount': instance.toAccount,
      'date': instance.date,
      'amount': instance.amount,
      'status': instance.status,
      'rtId': instance.rtId,
    };

_$_AccountMoreInfoModel _$$_AccountMoreInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_AccountMoreInfoModel(
      firmid: json['firmid'] as int?,
      branchid: json['branchid'] as int?,
      schemeName: json['schemeName'] as String?,
      schemeId: json['schemeId'] as int?,
      interest: (json['interest'] as num?)?.toDouble(),
      depositDate: json['depositDate'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
      accountNumber: json['accountNumber'] as String?,
      customerName: json['customerName'] as String?,
      accountType: json['accountType'] as String?,
      nominee: json['nominee'] as int?,
      status: json['status'] as int?,
      customerId: json['customerId'] as String?,
      coApplicantid: json['coApplicantid'] as String?,
      coApplicantName: json['coApplicantName'] as String?,
    );

Map<String, dynamic> _$$_AccountMoreInfoModelToJson(
        _$_AccountMoreInfoModel instance) =>
    <String, dynamic>{
      'firmid': instance.firmid,
      'branchid': instance.branchid,
      'schemeName': instance.schemeName,
      'schemeId': instance.schemeId,
      'interest': instance.interest,
      'depositDate': instance.depositDate,
      'balance': instance.balance,
      'accountNumber': instance.accountNumber,
      'customerName': instance.customerName,
      'accountType': instance.accountType,
      'nominee': instance.nominee,
      'status': instance.status,
      'customerId': instance.customerId,
      'coApplicantid': instance.coApplicantid,
      'coApplicantName': instance.coApplicantName,
    };
