import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/customer/remove_customer_notification/i_remove_customer_notification.dart';
import 'package:http/http.dart' as http;

import '../../core/api_end_points.dart';

@Injectable(as: IRemoveCustomerNotification)
@prod
class RemoveCustomerNotification implements IRemoveCustomerNotification {
  @override
  Future<Either<MainFailure, Unit>> removeCustomerNotification(
      {required String userId,
      required int alertId,
      required String loginToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "RemoveNotificationRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {"userId": userId, "alertId": alertId}
        }
      };
      final requestedJsn = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJsn};

      final uri = Uri.http(authority, "clearNotification", queryParameter);
      //String url =
      //  "${ApiEndPoints.removeCustomerNotification}?userId=$userId&alertId=$alertId";
      final response = await http.Client().put(uri);

      // String url =
      //     "${ApiEndPoints.removeCustomerNotification}?userId=$userId&alertId=$alertId";
      // final response = await http.Client().put(Uri.parse(url));
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
