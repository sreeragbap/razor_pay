import 'package:dartz/dartz.dart';

import 'failure/cheque_recouncilation_failure.dart';
import 'models/cheque_recouncilation_model.dart';

abstract class IChequeRecouncilationRepo {
  Future<
      Either<ChequeRecouncilationFailure,
          List<ChequeRecouncilationDataModel>>> getChequeRecounciledList();
  Future<Either<ChequeRecouncilationFailure, String>>
      chequeEmployeeVerification({
    required String depositid,
    required String chequeno,
    required DateTime clearDate,
  });
  Future<Either<ChequeRecouncilationFailure, String>> chequeEmployeeBounce({
    required String chequeno,
    required String depositid,
    required int employeeCode,
    required String? rejectReason,
    required DateTime clearDt,
  });
}
