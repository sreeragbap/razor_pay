// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mpin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpinDataModel _$$_MpinDataModelFromJson(Map<String, dynamic> json) =>
    _$_MpinDataModel(
      customerId: json['customerId'] as String?,
      customerName: json['customerName'] as String?,
      firmId: json['firmId'] as int?,
      branchId: json['branchId'] as int?,
      maritalStatus: json['maritalStatus'] as String?,
      fatherName: json['fatherName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      pinNo: json['pinNo'] as int?,
      houseName: json['houseName'] as String?,
      locality: json['locality'] as String?,
      postcode: json['postcode'] as String?,
      userType: json['userType'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_MpinDataModelToJson(_$_MpinDataModel instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'firmId': instance.firmId,
      'branchId': instance.branchId,
      'maritalStatus': instance.maritalStatus,
      'fatherName': instance.fatherName,
      'phoneNumber': instance.phoneNumber,
      'pinNo': instance.pinNo,
      'houseName': instance.houseName,
      'locality': instance.locality,
      'postcode': instance.postcode,
      'userType': instance.userType,
      'token': instance.token,
    };
