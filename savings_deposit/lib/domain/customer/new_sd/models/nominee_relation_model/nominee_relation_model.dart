import 'package:freezed_annotation/freezed_annotation.dart';
part 'nominee_relation_model.freezed.dart';
part 'nominee_relation_model.g.dart';

@freezed
class NomineeRelationDataModel with _$NomineeRelationDataModel {
  const factory NomineeRelationDataModel({
    required int? relationId,
    required String? relationName,
  }) = _NomineeRelationDataModel;
  factory NomineeRelationDataModel.fromJson(Map<String, dynamic> json) =>
      _$NomineeRelationDataModelFromJson(json);
}
