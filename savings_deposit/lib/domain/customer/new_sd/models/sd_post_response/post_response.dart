import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_response.g.dart';
part 'post_response.freezed.dart';

@freezed
class NewSdPostResponseDataModel with _$NewSdPostResponseDataModel {
  const factory NewSdPostResponseDataModel({
    required String? status,
    required String? type,
    required String? depositId,
  }) = _AvailableSchemesDataModel;
  factory NewSdPostResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$NewSdPostResponseDataModelFromJson(json);
}
