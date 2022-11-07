import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/customer/mpin/failure/mpin_failure.dart';
import 'package:savings_deposit/domain/customer/mpin/models/mpin_model.dart';
import 'package:savings_deposit/domain/login/models/login_model.dart';

abstract class IMpinRepo {
  // getDiviceId();
  Future<Either<MpinFailure, LoginDetails>> getMpinDetails(
      {required String mpin,
      required String deviceToken,
      required String loginToken});
// }

// // abstract class ImpinRegistrationRepo {
//   Future<Either<MpinFailure, String>> postmpinregistration({
//     required int? firmid,
//     required int? branchid,
//     required int? customerid,
//     required int? smsrefId,
//     required int? userid,
//     required String? password,
//     required String? phone,
//     required String? mpin,
//     required String? imeinumber,
//     required String? devicetoken,
//   });
  Future<Either<MpinFailure, String>> putmpinregistration(
      {required String userid,
      required String mobileno,
      required String mpin,
      // required String imeino,
      required String deviceToken,
      required String smsRefId,
      required String loginToken});
}
