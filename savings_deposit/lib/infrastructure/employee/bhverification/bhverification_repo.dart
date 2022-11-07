// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/domain/employee/bhverification/models/bh_Delete_Scheduled_Transcations_model/bh_delete_scheduled_transcation_model.dart';
import 'package:savings_deposit/domain/employee/bhverification/models/bhbounce_model/bhbounce_model.dart';
import 'package:savings_deposit/domain/employee/bhverification/models/bhverification_model/bhverification_model.dart';
import 'package:savings_deposit/domain/employee/bhverification/models/sort_approve_model/bhverification_sort_model.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

import '../../../domain/employee/bhverification/i_bhverification_repo/i_bhverification_repo.dart';
import '../../../domain/employee/failures/employee_failures.dart';

@Injectable(as: IBhverificationRepo)
@prod
class BhverificationRepo implements IBhverificationRepo {
  @override
  Future<Either<EmployeeFailures, List<BhverificationDatamodel>>>
      getbhverificationDetails() async {
    try {
      String kBhverificationUrl = ApiEndPoints.getbhverificationDetails;
      final result = await http.Client().get(Uri.parse(kBhverificationUrl));
      print(result.body);
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        var models = jsonDecode(result.body);
        List<BhverificationDatamodel> bhverificationsDetails = [];
        for (var model in models) {
          BhverificationDatamodel datamodel =
              BhverificationDatamodel.fromJson(model);
          bhverificationsDetails.add(datamodel);
        }
        return Right(bhverificationsDetails);
      } else {
        return const Left(
          EmployeeFailures.serverFailure(),
        );
      }
    } catch (e) {
      return const Left(
        EmployeeFailures.clientFailure(),
      );
    }
  }

  //--GET=>---------------------- Deleted_Scheduled_Transcation_details------------
  @override
  Future<Either<EmployeeFailures, List<BhDeleteScheduledTranscationsDataModel>>>
      getBhDeleteScheduledTranscationDetails() async {
    try {
      String kbhurl =
          "http://docker.mactech.net.in:6005/GetBHScheduledTransactions/group";
      final result = await http.Client().get(Uri.parse(kbhurl));
      print(result.body);
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        var models = jsonDecode(result.body);
        List<BhDeleteScheduledTranscationsDataModel>
            bhdeletedscheduledtranscationdetails = [];
        for (var model in models) {
          BhDeleteScheduledTranscationsDataModel dataModel =
              BhDeleteScheduledTranscationsDataModel.fromJson(model);
          bhdeletedscheduledtranscationdetails.add(dataModel);
        }
        return Right(bhdeletedscheduledtranscationdetails);
      } else {
        return const Left(EmployeeFailures.serverFailure());
      }
    } catch (e) {
      return const Left(EmployeeFailures.clientFailure());
    }
  }

  ///PUT ==>-----------------Bh Delete verification schedule Transcations-----------------

  @override
  Future<Either<EmployeeFailures, String>> putbhdeletescheduledtranscations(
      {required int? flag,
      required int? rtId,
      required DateTime? transactionDate,
      required String? userType,
      required int? bhId}) async {
    try {
      String kBhverificationUrl =
          'http://docker.mactech.net.in:6005/DeleteBHScheduledTransactions/Ntransactions?flag=$flag&rtId=$rtId&transactionDate=$transactionDate&userType=$userType&bhId=$bhId';
      final result = await http.Client().put(Uri.parse(kBhverificationUrl));
      print(result.body);
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        return const Right("");
      } else {
        return const Left(
          EmployeeFailures.serverFailure(),
        );
      }
    } catch (e) {
      return const Left(
        EmployeeFailures.clientFailure(),
      );
    }
  }

  @override
  Future<Either<EmployeeFailures, List<BhverificationSortDataModel>>>
      getbhverificationsortDetails() async {
    try {
      String kBhSorturl = ApiEndPoints.getbhverificationsortDetails;
      final result = await http.Client().get(Uri.parse(kBhSorturl));
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        var models = jsonDecode(result.body);
        List<BhverificationSortDataModel> bhverificationsortdetails = [];
        for (var model in models) {
          BhverificationSortDataModel dataModel =
              BhverificationSortDataModel.fromJson(model);
          bhverificationsortdetails.add(dataModel);
        }
        return Right(bhverificationsortdetails);
      } else {
        return const Left(EmployeeFailures.serverFailure());
      }
    } catch (e) {
      return const Left(EmployeeFailures.clientFailure());
    }
  }

  @override
  Future<Either<EmployeeFailures, List<BhverificationBounceDatamodel>>>
      getbhverificationbounceDetails() async {
    try {
      String kBhSorturl = ApiEndPoints.getbhverificationbounceDetails;
      final result = await http.Client().get(Uri.parse(kBhSorturl));
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        var models = jsonDecode(result.body);
        List<BhverificationBounceDatamodel> bhverificationbouncedetails = [];
        for (var model in models) {
          BhverificationBounceDatamodel dataModel =
              BhverificationBounceDatamodel.fromJson(model);
          bhverificationbouncedetails.add(dataModel);
        }
        return Right(bhverificationbouncedetails);
      } else {
        return const Left(EmployeeFailures.serverFailure());
      }
    } catch (e) {
      return const Left(EmployeeFailures.clientFailure());
    }
  }

  @override
  Future<Either<EmployeeFailures, String>> putApproveBhstatusDetails({
    required String depositid,
    required int bhid,
    required String chqNo,
    required int firmid,
    required int branchid,
    required int moduleid,
    required DateTime chequecleardate,
  }) async {
    try {
      String kBhverificationUrl =
          '${ApiEndPoints.putApproveBhstatusDetails}?firmid=$firmid&branchid=$branchid&moduleid=$moduleid&Depositid=$depositid&Bhid=$bhid&chqNo=$chqNo&chequecleardate=$chequecleardate';
      print(kBhverificationUrl);
      final result = await http.Client().put(Uri.parse(kBhverificationUrl));
      print(result.body);
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        return const Right("");
      } else {
        return const Left(
          EmployeeFailures.serverFailure(),
        );
      }
    } catch (e) {
      return const Left(
        EmployeeFailures.clientFailure(),
      );
    }
  }

//---------------------------------Bh Bounce------------------------------------------------------
  @override
  Future<Either<EmployeeFailures, String>> putbhbouncedetails(
      {required String chequeno,
      required String depositid,
      required String empid}) async {
    try {
      String kBhverificationUrl =
          '${ApiEndPoints.putbhbouncedetails}?Cheque_no=$chequeno&DepositId=$depositid&EmpId=$empid';
      final result = await http.Client().put(Uri.parse(kBhverificationUrl));
      print(result.body);
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        return const Right("");
      } else {
        return const Left(
          EmployeeFailures.serverFailure(),
        );
      }
    } catch (e) {
      return const Left(
        EmployeeFailures.clientFailure(),
      );
    }
  }

  //-----------------------Bh Return
  @override
  Future<Either<EmployeeFailures, String>> putbhreturndetails({
    required String chequeno,
    required String depositid,
  }) async {
    try {
      String kBhverificationUrl =
          '${ApiEndPoints.putReturnBhDetails}?Depositid=$depositid&chqNo=$chequeno';
      final result = await http.Client().put(Uri.parse(kBhverificationUrl));
      print(result.body);
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        return const Right("");
      } else {
        return const Left(
          EmployeeFailures.serverFailure(),
        );
      }
    } catch (e) {
      return const Left(
        EmployeeFailures.clientFailure(),
      );
    }
  }
}
