import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/customer/failure/customer_failure.dart';
import 'package:savings_deposit/domain/customer/withdrawal/models/withdrawal_model.dart';

abstract class IwithdrawalRepo {
  /////////////////////withdrawal Post  Method//////////////////////////
  Future<Either<CustomerFailure, PostwithdrawalResponseDatamodel>>
      postwithdrawalTranscationDetails(
          {required String? depositid,
          required int? branchid,
          required int? firmid,
          required double? amount,
          required String? transactionMethod,
          required String? loginToken,
          // required String? traDate,
          // int? chqno,
          // String? customerBank,
          // String? branchName,
          String? bankaccountNo,
          String? empcode,
          int? moduleId,
          // String? customerName,
          // int? userid,
          String? usertype,
          String? ifsccode,
          // DateTime? realizationDate,
          String? recurringtype,
          int? noOfTimes,
          DateTime? startDate,
          DateTime? closeDate,
          String? customerId});
  Future<Either<CustomerFailure, GoldLoanSearchDataModel>> goldLoanGetDetails({
    required String loginToken,
    required String? pledgeno,
    required String? usertype,
  });

  Future<Either<CustomerFailure, RdDataModel>> getRdDetails({
    required String loginToken,
    required String? depositid,
    required String? usertype,
  });
}
