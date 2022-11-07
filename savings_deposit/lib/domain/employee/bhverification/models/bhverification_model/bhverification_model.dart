import 'package:freezed_annotation/freezed_annotation.dart';
part 'bhverification_model.freezed.dart';
part 'bhverification_model.g.dart';

@freezed
class BhverificationDatamodel with _$BhverificationDatamodel {
  const factory BhverificationDatamodel({
    required double? firmId,
    required int? branchId,
    required String? chequeno,
    required String? customerName,
    required String? customerBank,
    required DateTime? chqSubmiteDate,
    required double? amount,
    required String? depositId,
    required double? depositBank,
    required String? branchname,
    required int? employeeCode,
    required DateTime? employeeVerifyDate,
    required double? statusId,
    required DateTime? realizationDate,
    //required double bhId,
    required double? bhStatus,
    required DateTime? bhVerifyDate,
    required int? chequeSeq,
    required DateTime? chequeCleardt,
    // required String? customerBank,
    //required double abhId,
    // required double abhStatus,
    // required DateTime abhVerifyDate,
    // required String rejectReason,
  }) = _BhverificationDatamodel;

  factory BhverificationDatamodel.fromJson(Map<String, dynamic> json) =>
      _$BhverificationDatamodelFromJson(json);
}
