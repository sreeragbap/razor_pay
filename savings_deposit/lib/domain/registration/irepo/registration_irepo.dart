import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/registration/failure/iregister_failure.dart';
import 'package:savings_deposit/domain/registration/models/get_employee/get_employee_model.dart';
import 'package:savings_deposit/domain/registration/models/otp_model/otp_model.dart';

abstract class IRegistrationRepo {
  Future<Either<RegistrationFailure, OtpModel>> checkMobileNumberAndSendOTP({
    required String customerId,required String splashToken
  });
  Future<Either<RegistrationFailure, GetCustomerDetails>> getCustomerDetails({
    required String customerId,required String splashToken
  });
  Future<Either<RegistrationFailure, String>> registerCustomer({
    required int firmid,
    required int branchid,
    required String userid,
    required String id,
    required String password,
    required String mobileNumber,
    required String splashToken,
  });

  Future<Either<RegistrationFailure, String>> userNameAlreadyExistOrNot(
      {required String userName,required String splashToken});
}
