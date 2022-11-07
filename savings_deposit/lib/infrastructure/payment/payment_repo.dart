import 'dart:convert';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:savings_deposit/core/payment_keys.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/payment/failure/payment_failure.dart';
import 'package:savings_deposit/domain/payment/irepo/i_payment_repo.dart';
import 'package:savings_deposit/domain/payment/model/payment_model.dart';
import 'package:savings_deposit/infrastructure/payment/generate_randomString.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/injection.dart';

@Injectable(as: IPaymentRepo)
@prod
class PaymentRepo implements IPaymentRepo {
  @override
  Future<Either<PaymentFailure, OrderResponse>> generateOrderID(
      {required int amount, required String generatedKey}) async {
    try {
      String basicAuth =
          'Basic ${base64.encode(utf8.encode('${PaymentKeys.keyId}:${PaymentKeys.keySecret}'))}';
      final body = jsonEncode({
        "amount": amount * 100,
        "currency": "INR",
        "receipt": generatedKey,
      });

      Map<String, String>? headers = {
        "Content-Type": "application/json",
        "Authorization": basicAuth,
      };

      Uri uri = Uri.parse("https://api.razorpay.com/v1/orders");
      final Response response =
          await http.post(uri, headers: headers, body: body);
      var model = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(OrderResponse.fromJson(model));
      } else {
        return const Left(PaymentFailure.serverFailure());
      }
    } catch (e) {
      return const Left(
          PaymentFailure.clientFailure("Unable generate transaction"));
    }
  }

  @override
  String generateOrderKey() {
    final generatedKey = generateRandomString(10);
    return generatedKey;
  }

  @override
  Future<Either<PaymentFailure, String>> startPayment(
      {required String amount,
      required String customerName,
      required String orderName,
      required String phoneNumber,
      required String email,
      required String orderId}) async {
    try {
      var options = {
        'key': PaymentKeys.keyId,
        'amount': amount.toString(),
        'order_id': orderId,
        'name': customerName,
        'description': orderName,
        'prefill': {
          'contact': phoneNumber,
          'email': email,
        }
      };
      getIt<Razorpay>().open(options);
      return const Right("success");
    } catch (e) {
      return const Left(PaymentFailure.clientFailure("Payment Failed"));
    }
  }

  @override
  Future<Either<PaymentFailure, String>> logPaymentDetails(
      {required int firmId,
      required int branchId,
      required int moduleId,
      required String refId,
      required String reqId,
      required String docId,
      required String customerId,
      required double transactioAmount,
      required double refAmount,
      required int gateWayMode,
      required int paymentMode,
      required int applicationFlag,
      required double prevCharge,
      required double serviceCharge,
      required int agentCode,
      required String customerName}) async {
    try {
      String url =
          "http://docker.mactech.net.in:5233/LogPaymentDetail?firmId=$firmId&branchId=$branchId&moduleId=$moduleId&refId=$refId&reqId=$reqId&custId=$customerId&docId=$docId&transactionAmount=$transactioAmount&refAmount=$refAmount&gatewayMode=$gateWayMode&paymentMode=$paymentMode&applicationFlag=$applicationFlag&provCharge=$prevCharge&serviceCharge=$serviceCharge&agentCode=$agentCode&customerName=$customerName";
      Response response = await http.post(Uri.parse(url));
      if (response.statusCode != 200 || response.statusCode != 201) {
        return const Left(PaymentFailure.serverFailure());
      } else {
        return Right(response.body);
      }
    } catch (e) {
      return const Left(PaymentFailure.clientFailure("Something went wrong"));
    }
  }

  @override
  Future<Either<PaymentFailure, String>> logPaymentStatus(
      {required String refId,
      required String reqId,
      required String custId,
      required String docId,
      required double transactionAmount,
      required String gatewayTransId,
      required String confirmString,
      required String errorString,
      required String resString,
      required String resTransId,
      required double refAmount,
      required int gatewayMode,
      required int paymentMode,
      required int applicationFlag,
      required double prevCharge,
      required double serCharge,
      required int agentMode}) async {
    try {
      String url =
          "http://docker.mactech.net.in:5233/LogPaymentStatus?refId=$refId&reqId=$reqId&custId=$custId&docId=$docId&transactionAmount=$transactionAmount&gatewayTransId=$gatewayTransId&confirmString=$confirmString&errorString=$errorString&resString=$resString&resTransId=$resTransId&refAmount=$refAmount&gatewayMode=$gatewayMode&paymentMode=$paymentMode&applicationFlag=$applicationFlag&prevCharge=$prevCharge&serCharge=$serCharge&agentMode=$agentMode";
      Response response = await http.post(Uri.parse(url));
      if (response.statusCode != 200 || response.statusCode != 201) {
        return const Left(PaymentFailure.serverFailure());
      } else {
        return Right(response.body);
      }
    } catch (e) {
      return const Left(PaymentFailure.clientFailure("Something went wrong"));
    }
  }
}
