part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.startPayment({
    required String amount,
    required String orderName,
    required String customerName,
    required String phoneNumber,
    required String email,
    required String orderId,
  }) = _StartPayment;
  const factory PaymentEvent.generateOrderId({
    required int amount,
    required String generatedKey,
  }) = _GenerateOrderId;
  const factory PaymentEvent.generateOrdreKey() = _GenerateOrdreKey;
  const factory PaymentEvent.paymentCancelled() = _PaymentCancelled;
  const factory PaymentEvent.externalError() = _ExternalError;

  const factory PaymentEvent.logPaymentDetails({
    required int firmId,
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
    required String customerName,
  }) = _LogPaymentDetails;
  const factory PaymentEvent.logPaymentStatus({
    required String refId,
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
    required int agentMode,
  }) = _LogPaymentStatus;
}
