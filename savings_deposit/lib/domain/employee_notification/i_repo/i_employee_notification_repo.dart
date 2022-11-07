import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/employee_notification/model/employee_notification_datamodel.dart';

import '../../core/failure/main_failure.dart';

abstract class IEmployeeNotification {
  Future<Either<MainFailure, List<EmployeeNotificationModel>>>
      fetchEmployeenotifications({required String employeeid});
}
