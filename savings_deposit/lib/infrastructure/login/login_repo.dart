// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/login/i_login_repo.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/domain/login/models/login_model.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';
import 'package:savings_deposit/infrastructure/core/decode_api_response.dart';

@Injectable(as: ILoginRepo)
@prod
class LoginRepo implements ILoginRepo {
  @override
  Future<Either<MainFailure, LoginDetails>> loginWithIdAndPassword(
      {required String userId,
      required String password,
      required int firmId,
      required String splashToken,
      required int moduleId}) async {
    try {
      Map<String, dynamic> parameter = {
        "Type": "LoginRequest",
        "Ver": apiVersion,
        "JwtToken": splashToken,
        "Data": {
          "LoginDetails": {
            "ModuleId": moduleId,
            "FirmId": firmId,
            "UserId": userId,
            "Password": password
          }
        }
      };
      final requestJson = jsonEncode(parameter);
      Map<String, dynamic> queryParameter = {"RequestJson": requestJson};
      final uri = Uri.http(authority, "/Login1", queryParameter);
      final response = await http.get(uri
          // Uri.parse(
          //     "${ApiEndPoints.login}?firmId=${firmId}&moduleId=${moduleId}&userId=$userId&password=$password"),
          // sathar@gmail.com
          // Macom%40123
          );
      print(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);
        final loginDetails = LoginDetails.fromJson(model);
        print(response.statusCode);
        print(response.body);
        print(loginDetails);
        return Right(loginDetails);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
