import 'package:freezed_annotation/freezed_annotation.dart';
part 'agentoremployee_model.freezed.dart';
part 'agentoremployee_model.g.dart';

@freezed
class EmployeeOrAgentDataModel with _$EmployeeOrAgentDataModel {
  const factory EmployeeOrAgentDataModel({
    required String status,
    required String name,
  }) = _EmployeeOrAgentDataModel;
  factory EmployeeOrAgentDataModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeOrAgentDataModelFromJson(json);
}
