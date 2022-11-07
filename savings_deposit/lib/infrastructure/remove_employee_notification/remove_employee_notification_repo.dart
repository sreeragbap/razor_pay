import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:savings_deposit/domain/remove_employee_notification/i_remove_employee_notification_repo.dart';

import '../core/api_end_points.dart';

@Injectable(as: IRemoveEmployeeNotification)
@prod
class RemoveEmployeeNotification implements IRemoveEmployeeNotification {
  @override
  Future<Either<MainFailure, Unit>> removeEmployeeNotification(
      String userId, int alertId) async {
    try {
      String url =
          "${ApiEndPoints.removeEmployeeNotification}?userId=$userId&alertId=$alertId";
      final response = await http.Client().put(Uri.parse(url));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return const Right(unit);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
