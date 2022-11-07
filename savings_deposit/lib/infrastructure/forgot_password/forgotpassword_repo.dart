// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/forgot_password/failure/forgot_password_failure.dart';
import 'package:savings_deposit/domain/forgot_password/i_repo/forgot_password_irepo.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/domain/registration/models/otp_model/otp_model.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

@Injectable(as: IForgotPassword)
@prod
class ForgotPasswordRepo implements IForgotPassword {
  @override
  Future<Either<ForgotPasswordFailure, OtpModel>> checkMobileNumberAndSendOTP({
    required String customerId,
    required String splashToken,
  }) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "CustomerPhoneNumberForgetRequest",
        "Ver": 1.0,
        "JwtToken": splashToken,
        "Data": {
          "Data": {"Customerid": customerId}
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri =
          Uri.http("docker.mactech.net.in:6003", "/Customer/phonenumberforget", queryParameter);
      final response = await http.Client().get(uri);
      // final response = await http.get(
      //   Uri.parse(
      //       "http://docker.mactech.net.in:5006/Customer/phonenumberforget?customerId=$customerId"),
      // );
//${ApiEndPoints.chequeEmployeeVerification}?
      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);

        print(response.statusCode);
        final otpModels = OtpModel.fromJson(model);

        print(model);
        return Right(otpModels);
      } else {
        var model = jsonDecode(response.body);
        if (model["status"] == "This user is not registered") {
          print(model["status"]);
          return const Left(ForgotPasswordFailure.notARegisteredUser());
        } else {
          return const Left(ForgotPasswordFailure.serverFailure());
        }
      }
    } catch (e) {
      print(e);
      return const Left(ForgotPasswordFailure.clientFailure());
    }
  }

  @override
  Future<Either<ForgotPasswordFailure, String>> changePassword(
      {required String mobileNumber,
      required String password,
      required String customerId,
      required String splashToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "forgetpassowordrequest",
        "Ver": apiVersion,
        "JwtToken": splashToken,
        "Data": {
          "Data": {
            "Mobilenumber": mobileNumber,
            "Newpassword": password,
            "Customerid": customerId
          }
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http("docker.mactech.net.in:6003", "/forgetpassword", queryParameter);
      final response = await http.Client().put(uri);
      // final response = await http.put(
      //   Uri.parse(
      //       "${ApiEndPoints.changePassword}?mobileNumber=$mobileNumber&newPassword=$password&customerId=$customerId"),
      // );

      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);

        print(response.statusCode);

        print(model);
        return Right(model["status"].toString());
      } else {
        var model = jsonDecode(response.body);
        if (model["status"] == "Password is not changed") {
          print(model["status"]);
          return const Left(ForgotPasswordFailure.passwordNotChanged());
        } else {
          return const Left(ForgotPasswordFailure.serverFailure());
        }
      }
    } catch (e) {
      print(e);
      return const Left(ForgotPasswordFailure.clientFailure());
    }
  }
}
