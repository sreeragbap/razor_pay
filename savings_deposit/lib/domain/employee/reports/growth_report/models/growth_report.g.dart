// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'growth_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GrowthReportDataModel _$$_GrowthReportDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_GrowthReportDataModel(
      regionName: json['regionName'] as String?,
      area: json['area'] as String?,
      branchId: json['branchId'] as int?,
      branchName: json['branchName'] as String?,
      count: json['count'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      dailyGrowth: (json['dailyGrowth'] as num?)?.toDouble(),
      monthlyGrowth: (json['monthlyGrowth'] as num?)?.toDouble(),
      outStanding: (json['outStanding'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_GrowthReportDataModelToJson(
        _$_GrowthReportDataModel instance) =>
    <String, dynamic>{
      'regionName': instance.regionName,
      'area': instance.area,
      'branchId': instance.branchId,
      'branchName': instance.branchName,
      'count': instance.count,
      'amount': instance.amount,
      'dailyGrowth': instance.dailyGrowth,
      'monthlyGrowth': instance.monthlyGrowth,
      'outStanding': instance.outStanding,
    };
