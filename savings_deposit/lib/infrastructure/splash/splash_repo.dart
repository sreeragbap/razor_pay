import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/splash/i_splash_repo.dart';
import 'package:savings_deposit/domain/splash/models/splash_model.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

@Injectable(as: ISplashRepo)
@prod
class SplashRepo implements ISplashRepo {
  @override
  Future<Either<MainFailure, SplashModel>> getApplicationDetails(
      String applicationNumber) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "splashrequest",
        "Ver": apiVersion,
        "ApplicationData": {
          "Application": {"ApplicationNumber": int.parse(applicationNumber)}
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};

      final uri = Uri.http(authority, "/splash/application", queryParameter);

      // String ksplashUrl =
      //     'http://docker.mactech.net.in:6008/splash/application?RequestJson=$requestedJson';
      final result = await http.Client().post(uri);
      if (result.statusCode == 200 || result.statusCode == 201) {
        final model = jsonDecode(result.body);

        final apiResult = SplashModel.fromJson(model["appicationDetails"]);
        return Right(apiResult);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
