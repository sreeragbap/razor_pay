import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/customer/failure/customer_failure.dart';
import 'package:savings_deposit/domain/customer/withdrawal/models/withdrawal_model.dart';

import 'models/customer_models.dart';

abstract class ICustomerRepo {
  Future<Either<CustomerFailure, List<CustomerAccountsModel>>>
      getCustomerAccountCardsDetails({
    required String customerId,
    required String loginToken,
  });

  Future<Either<CustomerFailure, List<CustomerOtherBankDataModel>>>
      getCustomerOtherBankcardsDetails(
          {required String customerId,
          required String userType,
          required String tokenId});
  Future<Either<CustomerFailure, List<CustomerNotificationModel>>>
      getCustomertNotificationDetails(
          {required String customerId, required String loginToken});
  Future<Either<CustomerFailure, CustomerProfileModel>> getCustomerDetails({
    required String customerId,
    required String loginToken,
  });
  Future<Either<CustomerFailure, List<CustomerScheduleTransactionModel>>>
      getCustomerScheduledTransactionDetails(
          {required String customerId, required String loginToken});
  Future<Either<CustomerFailure, SdAccountSearchDataModel>>
      getSdAccountSearchDetails({
    required String depositid,
    required String usertype,
    required String loginToken,
    // required String phonenumber,
  });

  Future<Either<CustomerFailure, AccountMoreInfoModel>> fetchAccountMoreInfo(
      {required String depositId, required String loginToken});
}
