import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_search_model.freezed.dart';
part 'customer_search_model.g.dart';

@freezed
class CustomerSearchModel with _$CustomerSearchModel {
  const factory CustomerSearchModel({
    required String? customerName,
    required String? customerId,
    required String? customerAddress,
    required int? firmID,
    required String? branchName,
    required int? branchID,
    required String? cardNumber,
    required String? customerPhone1,
    required String? customerPhone2,
    required String? dob,
  }) = _CustomerSearchModel;
  factory CustomerSearchModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerSearchModelFromJson(json);
}
