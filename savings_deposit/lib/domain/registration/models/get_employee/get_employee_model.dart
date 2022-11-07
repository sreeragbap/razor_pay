import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_employee_model.freezed.dart';
part 'get_employee_model.g.dart';

@freezed
class GetCustomerDetails with _$GetCustomerDetails {
  const factory GetCustomerDetails({
    required int? firmId,
    required int? branchId,
    required String? customerId,
    required String? customerName,
  }) = _GetCustomerDetails;
  factory GetCustomerDetails.fromJson(Map<String, dynamic> json) =>
      _$GetCustomerDetailsFromJson(json);
}
