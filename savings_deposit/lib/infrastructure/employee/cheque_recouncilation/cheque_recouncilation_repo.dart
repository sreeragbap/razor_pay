// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/employee/cheque_recouncilation/failure/cheque_recouncilation_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/employee/cheque_recouncilation/i_cheque_recouncilation_repo.dart';
import 'package:savings_deposit/domain/employee/cheque_recouncilation/models/cheque_recouncilation_model.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

@Injectable(as: IChequeRecouncilationRepo)
@prod
class ChequeRecounciationRepo implements IChequeRecouncilationRepo {
  @override
  Future<Either<ChequeRecouncilationFailure, String>> chequeEmployeeBounce({
    required String chequeno,
    required String depositid,
    required int employeeCode,
    required String? rejectReason,
    required DateTime clearDt,
  }) async {
    final result = await http.Client().put(
      Uri.parse(
        "${ApiEndPoints.chequeEmployeeBounce}?Cheque_no=$chequeno&DepositId=$depositid&EmpId=$employeeCode&RejectReason=$rejectReason&Cleardt=$clearDt",
      ),
    );
    try {
      if (result.statusCode == 200 || result.statusCode == 201) {
        log(result.body);
        return const Right("Success");
      } else {
        print("ChequeRecouncilationFailure.serverFailure");
        return const Left(ChequeRecouncilationFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      print("ChequeRecouncilationFailure.clientFailure");
      return const Left(ChequeRecouncilationFailure.clientFailure());
    }
  }

  @override
  Future<Either<ChequeRecouncilationFailure, String>>
      chequeEmployeeVerification({
    required String depositid,
    required String chequeno,
    required DateTime clearDate,
  }) async {
    final result = await http.Client().put(
      Uri.parse(
        "${ApiEndPoints.chequeEmployeeVerification}?Depositid=$depositid&chqNo=$chequeno&ClearDate=$clearDate",
      ),
    );

    try {
      if (result.statusCode == 200 || result.statusCode == 201) {
        return const Right("Success");
      } else {
        print("ChequeRecouncilationFailure.serverFailure");
        return const Left(ChequeRecouncilationFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      print("ChequeRecouncilationFailure.clientFailure");
      return const Left(ChequeRecouncilationFailure.clientFailure());
    }
  }

  @override
  Future<
          Either<ChequeRecouncilationFailure,
              List<ChequeRecouncilationDataModel>>>
      getChequeRecounciledList() async {
    const kChequeRecouncilationurl = ApiEndPoints.getChequeRecounciledList;
    final result = await http.Client().get(Uri.parse(kChequeRecouncilationurl));

    try {
      if (result.statusCode == 200 || result.statusCode == 201) {
        var models = jsonDecode(result.body);
        List<ChequeRecouncilationDataModel> chequeVerificationdetails = [];
        for (var model in models) {
          final dataModel = ChequeRecouncilationDataModel.fromJson(model);
          chequeVerificationdetails.add(dataModel);
        }

        return Right(chequeVerificationdetails);
      } else {
        print("ChequeRecouncilationFailure.serverFailure");
        return const Left(ChequeRecouncilationFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());

      print("ChequeRecouncilationFailure.clientFailure");
      return const Left(ChequeRecouncilationFailure.clientFailure());
    }
  }
}
