// ignore_for_file: avoid_print, unrelated_type_equality_checks, unused_local_variable
import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/customer/new_sd/failure/new_sd_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/customer/new_sd/i_repo/i_new_sd_repo.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/domain/customer/new_sd/models/coapplicant_rights_model/coapplicant_rights_model.dart';
import 'package:savings_deposit/domain/customer/new_sd/models/nominee_relation_model/nominee_relation_model.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';
import '../../../domain/customer/new_sd/models/agent_model/agentoremployee_model.dart';
import '../../../domain/customer/new_sd/models/available_scheme_model/available_schemes.dart';
import '../../../domain/customer/new_sd/models/sd_post_response/post_response.dart';

String? newSdResponse;

@Injectable(as: INewSavingsDeposit)
@prod
class NewSavingsDepositRepo implements INewSavingsDeposit {
  @override
  Future<Either<NewSdFailure, List<AvailableSchemesDataModel>>>
      getAvailableSchemes(
          {required String branchid, required String loginToken}) async {
    try {
      // String url = "${ApiEndPoints.newSd}?branchid=$branchid";
      // final response = await http.Client().get(Uri.parse(url));
      Map<String, dynamic> parameters = {
        "Type": "GetEligibleRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {"branchid": int.parse(branchid)}
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};

      final uri = Uri.http(authority, "/GetEligibleSchemes", queryParameter);
      // String url = "${ApiEndPoints.newSd}?branchid=$branchid";
      final response = await http.get(uri);

      List<AvailableSchemesDataModel> availableSchemesDataModels = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        final models = jsonDecode(response.body);
        print("branch schemes details card$models");
        for (var model in models) {
          final AvailableSchemesDataModel availableSchemesDataModel =
              AvailableSchemesDataModel.fromJson(model);
          availableSchemesDataModels.add(availableSchemesDataModel);
        }
        print(response.body);
        return Right(availableSchemesDataModels);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "There is No Eligible Schemes") {
          return const Left(NewSdFailure.noEligibleSchemes());
        } else {
          return const Left(NewSdFailure.serverFailure());
        }
      }
    } catch (e) {
      return const Left(NewSdFailure.clientFailure());
    }
  }

  @override
  Future<Either<NewSdFailure, NewSdPostResponseDataModel>>
      postNewSavingsAccount(
          {required String? customerId,
          required int moduleId,
          required String loginToken,
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
          int? subType}) async {
    if (realizationDate == null || realizationDate.isEmpty) {
      realizationDate = DateTime.now().toString();
    }
    if (nomineedob.isEmpty) {
      nomineedob = DateTime.now().toString();
    }
    // String url =
    //     "${ApiEndPoints.postNewSavingsAccount}?CustomerId=$customerId&SchemeId=$schemeId&moduleid=4&firmid=$firmId&branchid=$branchid&DepositType=SD&customername=$customerName&Amount=$amount&NomineeName=$nomineeName&nomineeDOB=$nomineedob&nomineeRelation=$relationWithNominee&nomineeFatHus=$spouseOrParentName&nomineeGurdianName=$nomineeGuardianName&nomineeHouseName=$nomineeHouseName&nomineeLocation=$nomineeLocation&coapplicantCustomerId=$coApplicantCustomerId&CoApplicantName=$coApplicantName&NomineePhoneNo=$nomineePhoneNumber&Sales_code=$salesCode&type=$typeOfSalesPerson&chqno=$chequeNo&customerBank=$customerBank&subsidiaryBankName=$branchBankAccountName&subsidiaryAccountNo=$branchBankAccountNumber&interestrate=$interest&ChequeDate=$realizationDate&transaction_method=$transactionMethod&Statusid=$statusId&userId=$userId&tds_code=$tdsCode&subtype=$subType";

    try {
      Map<String, dynamic> parameters = {
        "Type": "NewSDRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "Customerid": customerId,
            "Schemeid": schemeId,
            "Moduleid": moduleId,
            "Firmid": firmId,
            "Branchid": branchid,
            "Deposittype": "SD",
            "Customername": customerName,
            "Amount": double.parse(amount),
            "Nomineename": nomineeName,
            "Nomineedob": nomineedob.split(" ").first,
            "Nomineerelation": relationWithNominee,
            "Nomineefathus": spouseOrParentName,
            "Nomineegurdianname": nomineeGuardianName,
            "Nomineehousename": nomineeHouseName,
            "Nomineelocation": nomineeLocation,
            "Coapplicantcustomerid": coApplicantCustomerId,
            "Nomineephoneno": nomineePhoneNumber,
            "Coapplicantname": coApplicantName,
            "Sales_code": double.parse(salesCode!),
            "Type": typeOfSalesPerson,
            "Chno": chequeNo,
            "Customerbank": customerBank,
            "Subsidiarybankname": branchBankAccountName,
            "Subsidaryaccountno": branchBankAccountNumber,
            "Interestrate": interest,
            "Tds_code": tdsCode,
            "Chequedate": realizationDate.split(" ").first,
            "Transactionmethod": transactionMethod,
            "Statusid": statusId,
            "Subtype": subType,
            "Userid": userId
          }
        }
      };

      final requestJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestJson};

      final uri =
          Uri.http(authority, "/PostAccountOpeningFinal", queryParameter);

      print("$userId" "user id is");
      final response = await http.Client().post(uri);
      final decode = jsonDecode(response.body);
      if (response.statusCode == 200 ||
          response.statusCode == 201 && decode["status"] == "Success") {
        final decode = jsonDecode(response.body);
        print(decode["status"]);

        newSdResponse = decode["status"];
        print(decode["depositId"]);
        print("///////////////////////////");
        print(customerName);
        print(customerId);
        print(schemeId);
        print(firmId);
        print(branchid);
        print(depositTYPE);
        print(amount);
        print(interest);
        print(nomineeName);
        print(nomineedob);
        print(nomineePhoneNumber);
        print(nomineeGuardianName);
        print(spouseOrParentName);
        print(relationWithNominee);
        print(nomineeHouseName);
        print(nomineeLocation);
        print(transactionMethod);
        print("$userId" "user id is");
        print(salesCode);
        print(typeOfSalesPerson);
        print(coApplicantCustomerId);
        final postResponse =
            NewSdPostResponseDataModel.fromJson(decode as Map<String, dynamic>);
        newSdResponse = "failed";
        return Right(postResponse);
      } else {
        newSdResponse = "failed";
        final decode = jsonDecode(response.body);
        print(decode["status"]);
        if (decode["status"] == "something went wrong") {
          newSdResponse = "failed";
          return const Left(NewSdFailure.postNewsdFailed());
        } else {
          newSdResponse = "failed";
          print("serverfailutre post new sd");
          return const Left(NewSdFailure.serverFailure());
        }
      }
    } catch (e) {
      newSdResponse = "failed";
      print(e);
      print("Clientfailure post new sd");
      return const Left(NewSdFailure.clientFailure());
    }
  }

  @override
  Future<Either<NewSdFailure, EmployeeOrAgentDataModel>> validateSalescode(
      {required String salesCode,
      required String salesPersontype,
      required String loginToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "AgentEmployeeSearchRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {"Search": salesCode, "Type": salesPersontype}
        }
      };
      final requestJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestJson};
      final uri = Uri.http(authority, "/SearchAgent/Employee", queryParameter);

      // String url =
      //     "${ApiEndPoints.validateSalescode}?search=$salesCode&type=$salesPersontype";
      final response = await http.Client().get(uri);
      final decode = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final agentOrEmployeeResponse =
            EmployeeOrAgentDataModel.fromJson(decode as Map<String, dynamic>);
        return Right(agentOrEmployeeResponse);
      } else {
        final decode = jsonDecode(response.body);
        if (decode["status"] == "Empid Not Found") {
          return const Left(NewSdFailure.employeeNotFound());
        } else if (decode["status"] == "phone number is not found") {
          return const Left(NewSdFailure.customerNotFound());
        } else {
          print("server failure");
          return const Left(NewSdFailure.serverFailure());
        }
      }
    } catch (e) {
      print("client failure");
      return const Left(NewSdFailure.clientFailure());
    }
  }

  @override
  Future<Either<NewSdFailure, List<NomineeRelationDataModel>>> nomineeRelations(
      {required String loginToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "RelationshipData",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {"Data": {}}
      };

      final requestedJson = jsonEncode(parameters);
      print(parameters);
      Map<String, dynamic> queryparameter = {"RequestJson": requestedJson};
      print(requestedJson);

      final uri = Uri.http(authority, "/Relationships", queryparameter);
      final response = await http.Client().get(uri);
      print(response);

      // String url = ApiEndPoints.nomineeRelations;
      // final response = await http.Client().get(uri);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<NomineeRelationDataModel> nomineeRelationModels = [];

        final models = jsonDecode(response.body);

        for (var model in models) {
          final nomineeRelationModel = NomineeRelationDataModel.fromJson(model);
          nomineeRelationModels.add(nomineeRelationModel);
        }
        print(response.statusCode);
        print(response.body);
        print(nomineeRelationModels);
        return Right(nomineeRelationModels);
      } else {
        final decode = jsonDecode(response.body);

        print("server failure");
        return const Left(NewSdFailure.serverFailure());
      }
    } catch (e) {
      print(e);
      print("client failure");
      return const Left(NewSdFailure.clientFailure());
    }
  }

  @override
  Future<Either<NewSdFailure, List<CoApplicantRightsModel>>> coApplicantRights(
      {required String loginToken}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "CoapplicantRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
      };
      final requestedJson = jsonEncode(parameters);
      print(requestedJson);
      print(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http(authority, "/CoApplicantRights", queryParameter);
      // String url = ApiEndPoints.coApplicantRights;

      final response = await http.Client().get(uri);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<CoApplicantRightsModel> coApplicantRightsModels = [];

        final models = jsonDecode(response.body);

        for (var model in models) {
          final coApplicantRightsModel = CoApplicantRightsModel.fromJson(model);
          coApplicantRightsModels.add(coApplicantRightsModel);
        }
        print(response.statusCode);
        print(response.body);
        print(coApplicantRightsModels);
        return Right(coApplicantRightsModels);
      } else {
        final decode = jsonDecode(response.body);

        print("server failure");
        return const Left(NewSdFailure.serverFailure());
      }
    } catch (e) {
      print(e);
      print("client failure");
      return const Left(NewSdFailure.clientFailure());
    }
  }
}
