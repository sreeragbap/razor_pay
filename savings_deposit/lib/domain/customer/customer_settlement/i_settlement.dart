import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/customer/customer_settlement/models/settlement.dart';

abstract class ISettlementRepo {
  Future<Either<MainFailure, SettlementModel>> getSettlementDetails({
    required String? customerId,
    required String? accountNumber,
  });

  Future<Either<MainFailure, Unit>> putSettlement({
    required String? customerId,
    required String? accountNumber,
  });
}
