// ignore_for_file: unused_local_variable, avoid_print

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:savings_deposit/domain/confirm_otp/failures/confirm_otp_failure.dart';
import 'package:savings_deposit/domain/confirm_otp/i_repo/i_confirm_otp_repo.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

@Injectable(as: IConfirmOtpRepo)
@prod
class ConfirmOtpRepo implements IConfirmOtpRepo {
  @override
  Future<Either<ConfirmOtpFailure, String>> confirmOtp({
    required int transactionId,
    required int otp,
    required String splashToken,
  }) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "VerifyOTPRequest",
        "Ver": apiVersion,
        "JwtToken": splashToken,
        "Data": {
          "Data": {"Transactionid": transactionId, "Otp": otp}
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http("docker.mactech.net.in:6003", "/VerifyOTP", queryParameter);
      // final response = await http.put(
      //   Uri.parse(
      //       "http://docker.mactech.net.in:6005/VerifyOTP?txnid=$transactionId%20&otp=$otp"),
      // );
      // print("////////////////////////////////");
      final response = await http.Client().put(uri);
      print(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);
        print(".///////otpverified");
        return const Right("");
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "Invalid OTP") {
          return  Left(ConfirmOtpFailure.otpIsWrong(decode["status"]));
        } else if (decode["status"] == "this otp is already used") {
          return  Left(ConfirmOtpFailure.otpAlredyUsed(decode["status"]));
        }else if (decode["status"] == "This otp is expired") {
          return  Left(ConfirmOtpFailure.otpExpired(decode["status"]));
        } 
       
        else {
          return const Left(ConfirmOtpFailure.serverFailure());
        }
      }
    } catch (e) {
      print(e);
      return const Left(ConfirmOtpFailure.clientFailure());
    }
  }

  @override
  Future<Either<ConfirmOtpFailure, String>> resendOtp(
      {required String mobileNumber}) async {
    try {
      final response = await http.get(
        Uri.parse("${ApiEndPoints.resendOtp}?mobileNumber=$mobileNumber"),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);
        print("otpResend");
        print(model["transactionId"]);

        return Right(model["transactionId"].toString());
      } else {
        return const Left(ConfirmOtpFailure.serverFailure());
      }
    } catch (e) {
      print(e);
      return const Left(ConfirmOtpFailure.clientFailure());
    }
  }
}
