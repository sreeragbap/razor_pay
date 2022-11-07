import 'package:freezed_annotation/freezed_annotation.dart';
part 'mpin_model.freezed.dart';
part 'mpin_model.g.dart';

@freezed
class MpinDataModel with _$MpinDataModel {
  const factory MpinDataModel({
    required String? customerId,
    required String? customerName,
    required int? firmId,
    required int? branchId,
    required String? maritalStatus,
    required String? fatherName,
    required String? phoneNumber,
    required int? pinNo,
    required String? houseName,
    required String? locality,
    required String? postcode,
    required String? userType,
    required String? token,
  }) = _MpinDataModel;

  factory MpinDataModel.fromJson(Map<String, dynamic> json) =>
      _$MpinDataModelFromJson(json);
}
