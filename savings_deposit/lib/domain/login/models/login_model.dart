import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginDetails with _$LoginDetails {
  const factory LoginDetails({
    required int? empCode,
    required String? empName,
    required int? empType,
    required int? firmId,
    required int? branchId,
    required String? branchname,
    required int? statusId,
    required int? accessId,
    required int? designationId,
    required int? departmentId,
    required int? postId,
    required String? mobileNumber,
    required String? sessionId,
    required String? userType,
    required String? customerId,
    required String? customerName,
    required String? maritalStatus,
    required String? fatherName,
    required String? phoneNumber,
    required int? pinNo,
    required String? houseName,
    required String? locality,
    required String? postcode,
    required String? loginToken,
  }) = _LoginDetails;

  factory LoginDetails.fromJson(Map<String, dynamic> json) =>
      _$LoginDetailsFromJson(json);
}
