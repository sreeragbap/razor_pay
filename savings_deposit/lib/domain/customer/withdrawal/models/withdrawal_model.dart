import 'package:freezed_annotation/freezed_annotation.dart';
part 'withdrawal_model.freezed.dart';
part 'withdrawal_model.g.dart';

@freezed
class SdAccountSearchDataModel with _$SdAccountSearchDataModel {
  const factory SdAccountSearchDataModel({
    required String customerName,
    required String mobileNumber,
  }) = _SdAccountSearchDataModel;

  factory SdAccountSearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$SdAccountSearchDataModelFromJson(json);
}

@freezed
class GoldLoanSearchDataModel with _$GoldLoanSearchDataModel {
  const factory GoldLoanSearchDataModel(
      {required String customername,
      required int branchId,
      required String branchName}) = _GoldLoanSearchDataModel;

  factory GoldLoanSearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$GoldLoanSearchDataModelFromJson(json);
}

@freezed
class RdDataModel with _$RdDataModel {
  const factory RdDataModel({
    required String customername,
    required String branchName,
    required int branchId,
  }) = _RdDataModel;

  factory RdDataModel.fromJson(Map<String, dynamic> json) =>
      _$RdDataModelFromJson(json);
}

@freezed
class PostwithdrawalResponseDatamodel with _$PostwithdrawalResponseDatamodel {
  const factory PostwithdrawalResponseDatamodel({
    required String status,
    required String type,
    required int transId,
  }) = _PostwithdrawalResponseDatamodel;

  factory PostwithdrawalResponseDatamodel.fromJson(Map<String, dynamic> json) =>
      _$PostwithdrawalResponseDatamodelFromJson(json);
}
