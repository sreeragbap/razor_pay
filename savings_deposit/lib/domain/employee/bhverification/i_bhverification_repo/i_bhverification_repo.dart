import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/employee/bhverification/models/bh_Delete_Scheduled_Transcations_model/bh_delete_scheduled_transcation_model.dart';
import 'package:savings_deposit/domain/employee/bhverification/models/bhbounce_model/bhbounce_model.dart';
import 'package:savings_deposit/domain/employee/bhverification/models/bhverification_model/bhverification_model.dart';

import '../../failures/employee_failures.dart';
import '../models/sort_approve_model/bhverification_sort_model.dart';

abstract class IBhverificationRepo {
  Future<Either<EmployeeFailures, List<BhverificationDatamodel>>>
      getbhverificationDetails();
  Future<Either<EmployeeFailures, String>> putApproveBhstatusDetails({
    required String depositid,
    required int bhid,
    required String chqNo,
    required int firmid,
    required int branchid,
    required int moduleid,
    required DateTime chequecleardate,
  });
  Future<Either<EmployeeFailures, List<BhverificationSortDataModel>>>
      getbhverificationsortDetails();
  Future<Either<EmployeeFailures, List<BhverificationBounceDatamodel>>>
      getbhverificationbounceDetails();
  //GET=>------------------Delete_Scheduled_Transcation_details---------------

  Future<Either<EmployeeFailures, List<BhDeleteScheduledTranscationsDataModel>>>
      getBhDeleteScheduledTranscationDetails();
//-------------------------------------------------------------------------

  //---------------------------Bh bounce ------------------------------------
  Future<Either<EmployeeFailures, String>> putbhbouncedetails({
    required String chequeno,
    required String depositid,
    required String empid,
  });
  Future<Either<EmployeeFailures, String>> putbhreturndetails({
    required String chequeno,
    required String depositid,
  });

  Future<Either<EmployeeFailures, String>> putbhdeletescheduledtranscations({
    required int? flag,
    required int? rtId,
    required DateTime? transactionDate,
    required String? userType,
    required int? bhId,

    //  @JsonKey(name: "BHId") required int? bhId
  });
}
