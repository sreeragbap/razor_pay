part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    required String? generatedOrderKey,
    required bool? isLoading,
    OrderResponse? orderResponse,
    required Option<Either<PaymentFailure, OrderResponse>>
        generateOrderIdFailureORSuccessOption,
    required Option<Either<PaymentFailure, String>>
        startPaymentFailureOrSuccessOption,
    required Option<Either<PaymentFailure, String>>
        logPaymentDetailsFailureOrSuccess,
    required Option<Either<PaymentFailure, String>>
        logPaymentStatusFailureOrSuccess,
  }) = _PaymentState;
  factory PaymentState.initial() {
    return PaymentState(
        generatedOrderKey: "",
        isLoading: true,
        generateOrderIdFailureORSuccessOption: none(),
        logPaymentDetailsFailureOrSuccess: none(),
        logPaymentStatusFailureOrSuccess: none(),
        startPaymentFailureOrSuccessOption: none());
  }
}
