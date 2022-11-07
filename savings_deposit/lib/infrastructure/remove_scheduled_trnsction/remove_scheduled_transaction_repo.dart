// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/domain/remove_scheduled_transaction/failure/remove_scheduled_transaction_failure.dart';
import 'package:savings_deposit/domain/remove_scheduled_transaction/i_remove_scheduled_transaction_repo.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

@Injectable(as: IRemoveScheduledTransactionRepo)
@prod
class RemoveScheduledTransactioRepo implements IRemoveScheduledTransactionRepo {
  @override
  Future<Either<RemoveScheduledTransactionFailure, String>>
      removeScheduledTransaction({
    required int rtid,
    required String transactionDate,
    required int flag,
    required String userType,
    required String loginToken,
  }) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "DeleteNtransactionRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "flag": flag,
            "rtId": rtid,
            "transactionDate": transactionDate,
            "userType": userType
          }
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http(authority,
          "DeleteScheduledTransactions/Ntransactions", queryParameter);
      final response = await http.Client().put(uri);
      // String url =
      //     "${ApiEndPoints.removeScheduledTransaction}?flag=$flag&rtId=$rtid&transactionDate=$transactionDate&userType=$userType";
      // final response = await http.Client().put(Uri.parse(url));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right("Success");
      } else {
        final status = jsonDecode(response.body);
        if (status["status"] == "Failed") {
          return const Left(RemoveScheduledTransactionFailure.failed());
        } else {
          return const Left(RemoveScheduledTransactionFailure.severFailure());
        }
      }
    } catch (e) {
      print(e);
      return const Left(RemoveScheduledTransactionFailure.clientFailure());
    }
  }
}
