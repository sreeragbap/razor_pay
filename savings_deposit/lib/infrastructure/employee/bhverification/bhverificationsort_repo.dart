// // ignore_for_file: avoid_print

// import 'dart:convert';

// import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';
// import 'package:http/http.dart' as http;
// import 'package:savings_deposit/domain/employee/bhverification/models/bhverification_model/bhverification_model.dart';
// import 'package:savings_deposit/domain/employee/bhverification/models/sort_approve_model/bhverification_sort_model.dart';
// import 'package:savings_deposit/domain/employee/failures/bhverification_failure.dart';

// import '../../../domain/employee/bhverification/i_bhverification_repo/i_bhverification_repo.dart';

// @Injectable(as: IBhverificationRepo)
// @prod
// class BhverificationSortRepo implements IBhverificationRepo {
//   @override
//   Future<Either<BhverificationFailure, List<BhverificationSortDataModel>>>
//       getbhverificationsortDetails() async {
//     try {
//       String kBhSorturl = "http://docker.mactech.net.in:6002/sortedBhApprove";
//       final result = await http.Client().get(Uri.parse(kBhSorturl));
//       if (result.statusCode == 200 || result.statusCode == 201) {
//         print(result.statusCode);
//         var models = jsonDecode(result.body);
//         List<BhverificationSortDataModel> bhverificationsortdetails = [];
//         for (var model in models) {
//           BhverificationSortDataModel dataModel =
//               BhverificationSortDataModel.fromJson(model);
//           bhverificationsortdetails.add(dataModel);
//         }
//         return Right(bhverificationsortdetails);
//       } else {
//         return const Left(BhverificationFailure.serverFailure());
//       }
//     } catch (e) {
//       return const Left(BhverificationFailure.clientFailure());
//     }
//   }

//   @override
//   Future<Either<BhverificationFailure, List<BhverificationDatamodel>>>
//       getbhverificationDetails() {
//     throw UnimplementedError();
//   }

//   @override
//   Future<Either<BhverificationFailure, String>> putApproveBhstatusDetails(
//       {required String depositid, required int bhid, required String chqNo}) {
//     throw UnimplementedError();
//   }
// }
