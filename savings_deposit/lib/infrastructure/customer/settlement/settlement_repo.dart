// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/customer/customer_settlement/i_settlement.dart';
import 'package:savings_deposit/domain/customer/customer_settlement/models/settlement.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

@Injectable(as: ISettlementRepo)
@prod
class SettlementRepo implements ISettlementRepo {
  @override
  Future<Either<MainFailure, Unit>> putSettlement(
      {required String? customerId, required String? accountNumber}) async {
    try {
      final response = await http.put(
        Uri.parse(
            "${ApiEndPoints.settlement}?CustomerId=$customerId&AccountNumber=$accountNumber"),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // var model = jsonDecode(response.body);
        // final settelmentdetails = SettlementModel.fromJson(model);

        return const Right(unit);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, SettlementModel>> getSettlementDetails({
    required String? customerId,
    required String? accountNumber,
  }) async {
    try {
      final response = await http.get(Uri.parse(
          "${ApiEndPoints.getSettlementDetails}?CustomerId=$customerId&AccountNumber=$accountNumber"));
      if (response.statusCode == 200 || response.statusCode == 201) {
        final model = jsonDecode(response.body);

        final settelmentdetail = SettlementModel.fromJson(model);

        print(response.statusCode);
        print(response.body);
        return Right(settelmentdetail);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
