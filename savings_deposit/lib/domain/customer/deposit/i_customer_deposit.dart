import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/customer/deposit/failure/deposit_failure.dart';
import 'package:savings_deposit/domain/customer/deposit/models/deposit_model.dart';
import 'package:savings_deposit/domain/customer/payment_card/customer_bank_model/customer_bank_model.dart';
import 'package:savings_deposit/domain/customer/payment_card/ifsc_model/ifsc_model.dart';
import 'package:savings_deposit/domain/customer/payment_card/model/payment_model.dart';

abstract class ICustomerDeposit {
  Future<Either<DepositFailure, List<PaymentCardModel>>>
       fetchPaymentCardDetails(
          {required String userType, required String paymentType,required String loginToken});

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
      required int? empCode,
      required String? customerName,
      required DateTime? depositRealizationDate,
      required String? loginToken});

  Future<Either<DepositFailure, IfscCodeModel>> fetchIfscCode({
    required String? ifscCode,
  });

  Future<Either<DepositFailure, List<CustomerBankModel>>> getCustomerBanks({
    required int? firmId,
    required int? branchId,
  });
}
