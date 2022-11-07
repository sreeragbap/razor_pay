// ignore_for_file: unused_local_variable, avoid_print

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/customer/deposit/failure/deposit_failure.dart';
import 'package:savings_deposit/domain/customer/deposit/i_customer_deposit.dart';
import 'package:savings_deposit/domain/customer/deposit/models/deposit_model.dart';
import 'package:savings_deposit/domain/customer/payment_card/customer_bank_model/customer_bank_model.dart';
import 'package:savings_deposit/domain/customer/payment_card/ifsc_model/ifsc_model.dart';
import 'package:savings_deposit/domain/customer/payment_card/model/payment_model.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';
import 'package:savings_deposit/infrastructure/core/decode_api_response.dart';

@Injectable(as: ICustomerDeposit)
@prod
class DepositRepo implements ICustomerDeposit {
  @override
  Future<Either<DepositFailure, DepositModel>> deposit(
      {required String? accountNumber,
      required int? branchId,
      required int? firmId,
      required String? depositAmount,
      required String? transactionMethod,
      required String? chequeNo,
      required String? depositCustomerBank,
      required String? subsidiaryBank,
      required int? subsidiaryAccountNumber,
      required String? customerName,
      required int? empCode,
      required DateTime? depositRealizationDate,
      required String? loginToken}) async {
    try {
      String date = depositRealizationDate.toString().split(" ").first;
      Map<String, dynamic> parameters = {
        "Type": "DepositRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "DepositId": accountNumber,
            "BranchId": branchId,
            "FirmId": firmId,
            "Amount": double.parse(depositAmount.toString()),
            "TransactionMethod": transactionMethod,
            "UserType": 0,
            "CustomerBank": depositCustomerBank,
            "SubsidiaryBankName": subsidiaryBank,
            "SubsidiaryBankAccountno": subsidiaryAccountNumber,
            "CustomerName": customerName,
            "RealizationDate": date
          }
        }
      };

      final requestedJson = jsonEncode(parameters);

      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};

      final uri = Uri.http(authority, "/PostDeposit", queryParameter);

      // String url =
      //     "${ApiEndPoints.customerDeposit}?depositId=$accountNumber&branchId=$branchId&firmId=$firmId&amount=$depositAmount&transactionMethod=$transactionMethod&chqueNo=$chequeNo&subsidiaryBankName=$subsidiaryBank&customerBank=$depositCustomerBank&subsidiaryBankAccountno=$subsidiaryAccountNumber&employeeCode=$empCode&customerName=$customerName&realizationDate=$depositRealizationDate";

      final response = await http.post(uri
          //     //  "http://docker.mactech.net.in:6002/PostDeposit?depositId=${accountNumber}&branchId=0&firmId=2&amount=${amount}&transactionMethod=${transactionMethod}")
          // ),
          );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final model = jsonDecode(response.body);

        final depositModel = DepositModel.fromJson(model);
        return Right(depositModel);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "Something Went Wrong") {
          return const Left(DepositFailure.chequeNumberValidOrNot());
        }
        return const Left(DepositFailure.serverFailure());
      }
    } catch (e) {
      return const Left(DepositFailure.clientFailure());
    }
  }

  @override
  Future<Either<DepositFailure, List<PaymentCardModel>>>
      fetchPaymentCardDetails(
          {required String userType,
          required String paymentType,
          required String loginToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "PaymentGatewayRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {"Usertype": userType, "Paymenttype": paymentType}
        }
      };
      final requestedJson = jsonEncode(parameters);
      print(requestedJson);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      // String url =
      //
      //    "${ApiEndPoints.getCustomerStatementTransactions}?CustomerID=$customerId&AccountNumber=$accountNumber&fromDate=$fromDate&toDate=$toDate";
      final uri =
          Uri.http(authority, "/GetPaymentGetwayMaster", queryParameter);
      final response = await http.Client().get(uri);
      List<PaymentCardModel> customerPaymentModels = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        final models = jsonDecode(response.body);
        print("customer Payment details card$models");
        for (var model in models) {
          final PaymentCardModel paymentCardModel =
              PaymentCardModel.fromJson(model);
          customerPaymentModels.add(paymentCardModel);
        }
        return Right(customerPaymentModels);
      } else {
        return const Left(DepositFailure.serverFailure());
      }
    } catch (e) {
      return const Left(DepositFailure.clientFailure());
    }
  }

  @override
  Future<Either<DepositFailure, IfscCodeModel>> fetchIfscCode(
      {required String? ifscCode}) async {
    try {
      String url = "${ApiEndPoints.fetchIfscCode}?Ifsc_Code=$ifscCode";
      var response = await http.Client().get(Uri.parse(url));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final model = jsonDecode(response.body);

        final ifscModel = IfscCodeModel.fromJson(model);

        return Right(ifscModel);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "There is No Bank Found This IFSC") {
          return const Left(DepositFailure.clientFailure());
        }
        return const Left(DepositFailure.serverFailure());
      }
    } catch (e) {
      return const Left(DepositFailure.clientFailure());
    }
  }

  @override
  Future<Either<DepositFailure, List<CustomerBankModel>>> getCustomerBanks(
      {required int? firmId, required int? branchId}) async {
    try {
      String url =
          "${ApiEndPoints.getCustomerBanks}?firmid=$firmId&Branchid=$branchId";
      var response = await http.Client().get(Uri.parse(url));
      List<CustomerBankModel> customerBankModel = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        final models = jsonDecode(response.body);
        for (var model in models) {
          final CustomerBankModel customerBank =
              CustomerBankModel.fromJson(model);
          customerBankModel.add(customerBank);
        }
        return Right(customerBankModel);
      } else {
        return const Left(DepositFailure.serverFailure());
      }
    } catch (e) {
      return const Left(DepositFailure.clientFailure());
    }
  }
}
