// import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';

// import 'package:http/http.dart' as http;
// import 'package:savings_deposit/domain/employee/bhverification/i_bhverification_approve_repo.dart';
// import 'package:savings_deposit/domain/employee/failures/bhverification_failure.dart';

// @Injectable(as: IBhverificationRepo)
// @prod
// class BhverifyApproveRepo implements IBhverifyApproveButtonRepo {
//   @override
//   Future<Either<BhverificationFailure, String>> putApproveBhstatusDetails(
//       {required String depositid,
//       required int bhid,
//       required String chqNo}) async {
//     try {
//       String kBhverificationUrl =
//           'http://docker.mactech.net.in:6001/PutBhApprove?Depositid=$depositid&Bhid=$bhid&chqNo=$chqNo';
//       final result = await http.Client().put(Uri.parse(kBhverificationUrl));
//       print(result.body);
//       if (result.statusCode == 200 || result.statusCode == 201) {
//         print(result.statusCode);
//         return const Right("");
//       } else {
//         return const Left(
//           BhverificationFailure.serverFailure(),
//         );
//       }
//     } catch (e) {
//       return const Left(
//         BhverificationFailure.clientFailure(),
//       );
//     }
//   }
// }
