import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/application/payment/payment_bloc.dart';

/////generate order key , generate order id
generateOrderId(BuildContext context, String amount) {
  context.read<PaymentBloc>().add(const PaymentEvent.generateOrdreKey());
  context.read<PaymentBloc>().add(PaymentEvent.generateOrderId(
      amount: int.parse(amount),
      generatedKey: context.read<PaymentBloc>().state.generatedOrderKey!));
}

logPaymentDetails() {}

logPaymentStatus() {}
