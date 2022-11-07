// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/registration/failure/iregister_failure.dart';
import 'package:savings_deposit/domain/registration/irepo/registration_irepo.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/domain/registration/models/get_employee/get_employee_model.dart';
import 'package:savings_deposit/domain/registration/models/otp_model/otp_model.dart';

import '../core/api_end_points.dart';

@Injectable(as: IRegistrationRepo)
@prod
class ForgotPasswordRepo implements IRegistrationRepo {
  @override
  Future<Either<RegistrationFailure, GetCustomerDetails>> getCustomerDetails(
      {required String customerId, required String splashToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "CustomercustIdrequest",
        "Ver": apiVersion,
        "JwtToken": splashToken,
        "Data": {
          "Data": {"CustomerId": customerId}
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};

      final uri = Uri.http(authority, "/Customer/CustomerId", queryParameter);
      final response = await http.Client().get(uri);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);
        print(response.statusCode);
        final postResponse =
            GetCustomerDetails.fromJson(model as Map<String, dynamic>);
        print(postResponse);
        return Right(postResponse);
      } else {
        return const Left(RegistrationFailure.serverFailure());
      }
    } catch (e) {
      print(e);
      return const Left(RegistrationFailure.clientFilure());
    }
  }

  @override
  Future<Either<RegistrationFailure, String>> registerCustomer(
      {required int firmid,
      required int branchid,
      required String userid,
      required String id,
      required String password,
      required String mobileNumber,
      required String splashToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "PostRegistrationrequest",
        "Ver": 1.0,
        "JwtToken": splashToken,
        "Data": {
          "Data": {
            "Firmid": firmid,
            "Branchid": branchid,
            "Customerid": id,
            "Userid": userid,
            "Password": password,
            "Phone": mobileNumber
          }
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http(
          "docker.mactech.net.in:6003", "/PostRegistration1", queryParameter);
      final response = await http.Client().post(uri);

      // final response = await http.post(
      //   Uri.parse(
      //       "${ApiEndPoints.registerEmployee}?firmid=$firmid&branchid=$branchid&Customerid=$id&userid=$userid&password=$password&phone=$mobileNumber"),
      // );

      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);
        print(response.statusCode);
        print(model);
        return Right(model["status"].toString());
      } else {
        var model = jsonDecode(response.body);
        if (model["status"] == " something went wrong") {
          return const Left(RegistrationFailure.clientFilure());
        }
        return const Left(RegistrationFailure.serverFailure());
      }
    } catch (e) {
      print(e);
      return const Left(RegistrationFailure.clientFilure());
    }
  }

  @override
  Future<Either<RegistrationFailure, String>> userNameAlreadyExistOrNot(
      {required String userName, required String splashToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "ValidateUserIdRequest",
        "Ver": apiVersion,
        "JwtToken": splashToken,
        "Data": {
          "Data": {"UserId": userName}
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};

      final uri = Uri.http(authority, "/Validateuserid", queryParameter);
      final response = await http.Client().get(uri);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);
        print('-------------------##' + response.body);
        return Right(model['status']);
      } else {
        var model = jsonDecode(response.body);
        if (model['status'] == "$userName Already Exist") {
          // print(model.toString());
          return Left(RegistrationFailure.userNameAlreadyExistOrNot(
              userNameAlreadyExist: model['status']));
        }
        return const Left(RegistrationFailure.serverFailure());
      }
    } catch (e) {
      return const Left(RegistrationFailure.clientFilure());
    }
  }

  @override
  Future<Either<RegistrationFailure, OtpModel>> checkMobileNumberAndSendOTP(
      {required String customerId, required String splashToken}) async {
    {
      try {
        Map<String, dynamic> parameters = {
          "Type": "GetCustomerPhoneRequest",
          "Ver": apiVersion,
          "JwtToken": splashToken,
          "Data": {
            "Data": {"customerId": customerId}
          }
        };
        final requestedJson = jsonEncode(parameters);
        Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
        final uri = Uri.http("docker.mactech.net.in:6003",
            "/Customer/phonenumber", queryParameter);
        final response = await http.get(uri
            // Uri.parse(
            //     "http://docker.mactech.net.in:5006/Customer/phonenumber?customerId=$customerId"),
            );

        if (response.statusCode == 200 || response.statusCode == 201) {
          var model = jsonDecode(response.body);
          print(response.statusCode);
          final otpModels = OtpModel.fromJson(model);
          print(model);
          return Right(otpModels);
        } else {
          var model = jsonDecode(response.body);
          if (model["status"] == "This MobileNumber is not Valid") {
            return Left(
                RegistrationFailure.mobileNumberIsNotValid(mobileNumberIsNotValid: model["status"]));
          }
          if (model["status"] ==
              "Your customer id is not linked with your phone number") {
            return Left(RegistrationFailure.mobileNumberIsNotLinked(
                mobileNumberIsNotLinked: model["status"]));
          }
          if (model["status"] == "This Customer is Already Registred") {
            return Left(
                RegistrationFailure.userAlreadyRegistered(userAlreadyRegistered: model["status"]));
          }
          if (model["status"] == "Invalid Token") {
            return Left(
                RegistrationFailure.invalidToken(invalidToken: model["status"]));
          }
          if (model["status"] == "Customer Not Found") {
            return Left(
                RegistrationFailure.invalidCustomerId(invalidCustomerId: model["status"]));
          } else {
            return const Left(RegistrationFailure.serverFailure());
          }
        }
      } catch (e) {
        print(e);
        return const Left(RegistrationFailure.clientFilure());
      }
    }
  }
}
