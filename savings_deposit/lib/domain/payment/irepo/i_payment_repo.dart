import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/payment/failure/payment_failure.dart';
import 'package:savings_deposit/domain/payment/model/payment_model.dart';

abstract class IPaymentRepo {
  String generateOrderKey();
  Future<Either<PaymentFailure, OrderResponse>> generateOrderID({
    required int amount,
    required String generatedKey,
  });
  Future<Either<PaymentFailure, String>> startPayment({
    required String amount,
    required String orderName,
    required String customerName,
    required String phoneNumber,
    required String email,
    required String orderId,
  });
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
      required String customerName});
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
      required int agentMode});
}
