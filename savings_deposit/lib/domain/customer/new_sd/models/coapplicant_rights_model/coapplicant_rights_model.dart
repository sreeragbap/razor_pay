import 'package:freezed_annotation/freezed_annotation.dart';
part 'coapplicant_rights_model.freezed.dart';
part 'coapplicant_rights_model.g.dart';

@freezed
class CoApplicantRightsModel with _$CoApplicantRightsModel {
  const factory CoApplicantRightsModel({
    required int? statusId,
    required String status,
  }) = _CoApplicantRightsModel;
  factory CoApplicantRightsModel.fromJson(Map<String, dynamic> json) =>
      _$CoApplicantRightsModelFromJson(json);
}
