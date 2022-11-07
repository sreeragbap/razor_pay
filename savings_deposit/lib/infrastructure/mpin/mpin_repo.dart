import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/customer/mpin/failure/mpin_failure.dart';
import 'package:savings_deposit/domain/customer/mpin/i_mpin_repo.dart';

import 'package:http/http.dart' as http;
import 'package:savings_deposit/domain/login/models/login_model.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

@Injectable(as: IMpinRepo)
@prod
class MpinRepo implements IMpinRepo {
  @override
  Future<Either<MpinFailure, LoginDetails>> getMpinDetails(
      {required String mpin,
      required String deviceToken,
      required String loginToken}) async {
    try {
      print("mpin" + mpin);
      print("deviceToken" + deviceToken);
      Map<String, dynamic> parameters = {
        "Type": "LoginMpinRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {"mpin": mpin, "deviceToken": deviceToken}
        }
      };

      final requestedJson = jsonEncode(parameters);
      print(requestedJson);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http(authority, '/Login/mpin', queryParameter);
      var response = await http.Client().post(uri);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);
        final Mpindetails = LoginDetails.fromJson(model);
        print(response.statusCode);
        print(response.body);
        print(Mpindetails);
        return Right(Mpindetails);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "mpin and Device token is not valid") {
          return const Left(MpinFailure.incorrectPin());
        } else if (decode["status"] == "user is not registered") {
          return const Left(MpinFailure.usernotRegistered());
        } else {
          return const Left(MpinFailure.serverFailure());
        }
      }
    } catch (e) {
      return const Left(MpinFailure.clientFailure());
    }
  }

  @override
  Future<Either<MpinFailure, String>> putmpinregistration(
      {required String userid,
      required String mobileno,
      required String mpin,
      // required String imeino,
      required String deviceToken,
      required String smsRefId,
      required String loginToken}) async {
    try {
      print("mpin" + mpin);
      print("deviceToken" + deviceToken);
      Map<String, dynamic> parameters = {
        "Type": "SetMpinRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "Userid": userid,
            "Phone": mobileno,
            "Mpin": mpin,
            // "Imeinumber": "12365",
            "Devicetoken": deviceToken,
            "Smsrefid": smsRefId
          }
        }
      };
      final requestedJson = jsonEncode(parameters);
      print(requestedJson);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http(authority, '/SetMpin', queryParameter);
      var response = await http.Client().put(uri);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);

        print(response.statusCode);

        return Right("");
      } else {
        return const Left(MpinFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MpinFailure.clientFailure());
    }
  }
}
