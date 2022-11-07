import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/customer/new_sd/failure/new_sd_failure.dart';
import 'package:savings_deposit/domain/customer/new_sd/models/coapplicant_rights_model/coapplicant_rights_model.dart';
import '../models/agent_model/agentoremployee_model.dart';
import '../models/available_scheme_model/available_schemes.dart';
import '../models/nominee_relation_model/nominee_relation_model.dart';
import '../models/sd_post_response/post_response.dart';

abstract class INewSavingsDeposit {
  Future<Either<NewSdFailure, List<AvailableSchemesDataModel>>>
      getAvailableSchemes(
          {required String branchid, required String loginToken});
  Future<Either<NewSdFailure, NewSdPostResponseDataModel>>
      postNewSavingsAccount(
          {required String? customerId,
          required String loginToken,
          required int moduleId,
          required int schemeId,
          required int firmId,
          required int branchid,
          required String depositTYPE,
          required String customerName,
          required String amount,
          required double interest,
          required int tdsCode,
          required String nomineeName,
          required String nomineedob,
          required String nomineePhoneNumber,
          required String nomineeGuardianName,
          required String spouseOrParentName,
          required String relationWithNominee,
          required String nomineeHouseName,
          required String nomineeLocation,
          required String transactionMethod,
          required int? userId,
          required int typeOfSalesPerson,
          String? salesCode,
          String? coApplicantCustomerId,
          String? coApplicantName,
          int? branchBankAccountNumber,
          String? branchBankAccountName,
          String? chequeNo,
          String? customerBank,
          String? branchName,
          String? realizationDate,
          int? statusId,
          int? subType});
  Future<Either<NewSdFailure, EmployeeOrAgentDataModel>> validateSalescode(
      {required String salesCode,
      required String salesPersontype,
      required String loginToken});
Future<Either<NewSdFailure, List<NomineeRelationDataModel>>>
      nomineeRelations({required String loginToken});
  Future<Either<NewSdFailure, List<CoApplicantRightsModel>>>
      coApplicantRights({required String loginToken});
}
