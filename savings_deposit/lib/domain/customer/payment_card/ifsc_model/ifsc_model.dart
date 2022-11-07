import 'package:freezed_annotation/freezed_annotation.dart';
part 'ifsc_model.freezed.dart';
part 'ifsc_model.g.dart';

@freezed
class IfscCodeModel with _$IfscCodeModel {
  const factory IfscCodeModel({
    required String bankname,
    required String branchname,
  }) = _IfscCodeModel;

  factory IfscCodeModel.fromJson(Map<String, dynamic> json) =>
      _$IfscCodeModelFromJson(json);
}
