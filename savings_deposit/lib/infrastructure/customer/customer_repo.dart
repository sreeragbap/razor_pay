// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/domain/customer/failure/customer_failure.dart';
import 'package:savings_deposit/domain/customer/i_customer_repo.dart';
import 'package:savings_deposit/domain/customer/withdrawal/models/withdrawal_model.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

import '../../domain/customer/models/customer_models.dart';

@Injectable(as: ICustomerRepo)
@prod
class CustomerRepo implements ICustomerRepo {
  @override
  Future<Either<CustomerFailure, List<CustomerAccountsModel>>>
      getCustomerAccountCardsDetails(
          {required String customerId, required String loginToken}) async {
    try {
      Map<String, dynamic> parameter = {
        "Type": "CustomerAccountsRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "Id": customerId,
          }
        }
      };
      final requestJson = jsonEncode(parameter);
      Map<String, dynamic> queryParameter = {"RequestJson": requestJson};
      final uri = Uri.http(authority, "/GetCustomerAccounts", queryParameter);
      final response = await http.get(uri);
      // String url =
      //     "${ApiEndPoints.getCustomerAccountCardsDetails}?customerId=$customerId";
      // var response = await http.Client().get(Uri.parse(url));
      List<CustomerAccountsModel> customerAccountsModels = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        final models = jsonDecode(response.body);
        print("customer accounts details card$models");
        for (var model in models) {
          final CustomerAccountsModel customerAccountsModel =
              CustomerAccountsModel.fromJson(model);
          customerAccountsModels.add(customerAccountsModel);
        }
        return Right(customerAccountsModels);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "Invalid Customer Id") {
          return const Left(CustomerFailure.dataNotFount());
        } else {
          return const Left(CustomerFailure.serverFailure());
        }
      }
    } catch (e) {
      return const Left(CustomerFailure.clientFailure());
    }
  }

  @override
  Future<Either<CustomerFailure, SdAccountSearchDataModel>>
      getSdAccountSearchDetails({
    required String depositid,
    required String usertype,
    required String loginToken,
    //  required String phonenumber
  }) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "WithdrawalToRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "Depositid": depositid,
            "Usertype": usertype,
          }
        }
      };

      final requestedJson = jsonEncode(parameters);

      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      print(requestedJson);
      final uri = Uri.http(authority, "/WithdrawalTo", queryParameter);
      // String url =
      //     "http://docker.mactech.net.in:6005/WithdrawalTo?DepositId=$depositid&userType=$usertype";

      final response = await http.Client().get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);
        // print(model);
        SdAccountSearchDataModel sdaccountsearchModel =
            SdAccountSearchDataModel.fromJson(model);

        return Right(sdaccountsearchModel);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "SD number not found") {
          return Left(CustomerFailure.dataResponseStatus(decode["status"]));
        } else if (decode["status"] == "Settled Account") {
          return left(CustomerFailure.setteledaccount(decode["status"]));
        } else {
          return const Left(CustomerFailure.serverFailure());
        }
      }
    } catch (e) {
      return const Left(CustomerFailure.clientFailure());
    }
  }

  /////////////////////////Customer Other Bank Accounts///////////////////////////////

  @override
  Future<Either<CustomerFailure, List<CustomerOtherBankDataModel>>>
      getCustomerOtherBankcardsDetails({
    required String customerId,
    required String userType,
    required String tokenId,
  }) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "CustomerToAccountsRequest",
        "Ver": apiVersion,
        "JwtToken": tokenId,
        "Data": {
          "Data": {
            "Customerid": customerId,
            "Usertype": userType,
          }
        }
      };
      final requestedJson = jsonEncode(parameters);
      print(requestedJson);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http(authority2, "/CustomerTOaccounts", queryParameter);
      final response = await http.Client().get(uri);
      // String url =
      //     "${ApiEndPoints.getCustomerOtherBankCardDetails}?Cust_Id=$customerId&userType=$userType";
      // var response = await http.Client().get(Uri.parse(url));
      List<CustomerOtherBankDataModel> customerAccountsModels = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        final models = jsonDecode(response.body);
        print("customer accounts details card$models");
        for (var model in models) {
          CustomerOtherBankDataModel customerAccountsModel =
              CustomerOtherBankDataModel.fromJson(model);
          customerAccountsModels.add(customerAccountsModel);
        }
        return Right(customerAccountsModels);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "Invalid Customer Id") {
          return const Left(CustomerFailure.dataNotFount());
        } else {
          return const Left(CustomerFailure.serverFailure());
        }
      }
    } catch (e) {
      return const Left(CustomerFailure.clientFailure());
    }
  }

  @override
  Future<Either<CustomerFailure, CustomerProfileModel>> getCustomerDetails({
    required String customerId,
    required String loginToken,
  }) async {
    try {
      // String url = "${ApiEndPoints.getCustomerDetails}?customerId=$customerId";
      Map<String, dynamic>? parameter = {
        "Type": "GetCustomerDetailsRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "customerId": customerId,
          }
        }
      };
      final requestedJson = jsonEncode(parameter);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http(authority, '/GetcustomerDetails', queryParameter);
      var response = await http.Client().get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);
        // print(model);
        CustomerProfileModel customerProfileModel =
            CustomerProfileModel.fromJson(model);

        return Right(customerProfileModel);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "Invalid Customer Id") {
          return const Left(CustomerFailure.dataNotFount());
        } else {
          return const Left(CustomerFailure.serverFailure());
        }
      }
    } catch (e) {
      return const Left(CustomerFailure.clientFailure());
    }
  }

  @override
  Future<Either<CustomerFailure, List<CustomerScheduleTransactionModel>>>
      getCustomerScheduledTransactionDetails(
          {required String customerId, required String loginToken}) async {
    try {
      // String url =
      //     "${ApiEndPoints.getCustomerScheduledTransactionDetails}?customerId=$customerId";
      Map<String, dynamic> parameters = {
        "Type": "ScheduledTransactionRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {"CustomerID": customerId}
        }
      };
      final requestedJson = jsonEncode(parameters);
      print(parameters);
      print(requestedJson);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};

      final uri =
          Uri.http(authority, "/GetScheduledTransactions", queryParameter);
      var response = await http.Client().get(uri);
      // var response = await http.Client().get(Uri.parse(url));
      List<CustomerScheduleTransactionModel> customerScheduleTransactionModels =
          [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        var models = jsonDecode(response.body);
        // print(models);
        for (var model in models) {
          CustomerScheduleTransactionModel customerScheduleTransactionModel =
              CustomerScheduleTransactionModel.fromJson(model);
          customerScheduleTransactionModels
              .add(customerScheduleTransactionModel);
        }
        return Right(customerScheduleTransactionModels);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "Invalid Customer Id") {
          return const Left(CustomerFailure.dataNotFount());
        } else {
          return const Left(CustomerFailure.serverFailure());
        }
      }
    } catch (e) {
      return const Left(CustomerFailure.clientFailure());
    }
  }

  @override
  Future<Either<CustomerFailure, List<CustomerNotificationModel>>>
      getCustomertNotificationDetails(
          {required String customerId, required String loginToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "Notificationrequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {"Userid": customerId}
        }
      };

      final requestJson = jsonEncode(parameters);

      Map<String, dynamic> queryParameter = {"RequestJson": requestJson};

      final uri = Uri.http(authority, '/Notifications', queryParameter);

      // String url =
      //     "${ApiEndPoints.getCustomertNotificationDetails}?userId=$customerId";
      var response = await http.Client().get(uri);
      List<CustomerNotificationModel> customerNotificationModels = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        var models = jsonDecode(response.body);
        // print(models);
        for (var model in models) {
          CustomerNotificationModel customerNotificationModel =
              CustomerNotificationModel.fromJson(model);
          customerNotificationModels.add(customerNotificationModel);
        }
        return Right(customerNotificationModels);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "Invalid Customer Id") {
          return const Left(CustomerFailure.dataNotFount());
        } else {
          return const Left(CustomerFailure.serverFailure());
        }
      }
    } catch (e) {
      return const Left(CustomerFailure.clientFailure());
    }
  }

  @override
  Future<Either<CustomerFailure, AccountMoreInfoModel>> fetchAccountMoreInfo(
      {required String depositId, required String loginToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "AccountDetailsRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {"Depositid": depositId}
        }
      };
      final requestedJson = jsonEncode(parameters);
      print(requestedJson);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http(authority, "/GetAccountMoreInfo", queryParameter);
      final response = await http.Client().get(uri);

      // String url =
      //     "http://docker.mactech.net.in:6005/GetAccountMoreInfo?depositid=$depositId";
      // Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200 || response.statusCode == 201) {
        var model = jsonDecode(response.body);
        AccountMoreInfoModel accountMoreInfoModel =
            AccountMoreInfoModel.fromJson(model);
        return Right(accountMoreInfoModel);
      } else {
        return const Left(CustomerFailure.serverFailure());
      }
    } catch (e) {
      return const Left(CustomerFailure.clientFailure());
    }
  }
}
