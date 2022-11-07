import 'dart:convert';

import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/employee_notification/i_repo/i_employee_notification_repo.dart';
import 'package:savings_deposit/domain/employee_notification/model/employee_notification_datamodel.dart';
import 'package:http/http.dart ' as http;
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

class EmployeeNotificationRepo implements IEmployeeNotification {
  @override
  Future<Either<MainFailure, List<EmployeeNotificationModel>>>
      fetchEmployeenotifications({required String employeeid}) async {
    try {
      String url =
          "${ApiEndPoints.fetchEmployeenotifications}?userID=$employeeid";
      var response = await http.Client().get(Uri.parse(url));
      List<EmployeeNotificationModel> notificationDetails = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        var datamodels = jsonDecode(response.body);
        for (var model in datamodels) {
          EmployeeNotificationModel notification =
              EmployeeNotificationModel.fromJson(model);
          notificationDetails.add(notification);
        }
        return Right(notificationDetails);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
