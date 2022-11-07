// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCustomerDetails _$$_GetCustomerDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_GetCustomerDetails(
      firmId: json['firmId'] as int?,
      branchId: json['branchId'] as int?,
      customerId: json['customerId'] as String?,
      customerName: json['customerName'] as String?,
    );

Map<String, dynamic> _$$_GetCustomerDetailsToJson(
        _$_GetCustomerDetails instance) =>
    <String, dynamic>{
      'firmId': instance.firmId,
      'branchId': instance.branchId,
      'customerId': instance.customerId,
      'customerName': instance.customerName,
    };
