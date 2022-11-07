import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/employee/bhverification/models/bhbounce_model/bhbounce_model.dart';
import 'package:savings_deposit/domain/employee/bhverification/models/bhverification_model/bhverification_model.dart';
import 'package:savings_deposit/domain/employee/bhverification/models/sort_approve_model/bhverification_sort_model.dart';
import 'package:savings_deposit/domain/employee/reports/customerwise_report/models/customerwise_report.dart';
import 'package:savings_deposit/domain/employee/reports/growth_report/models/growth_report.dart';
import 'package:savings_deposit/domain/employee/reports/i_report.dart';
import 'package:savings_deposit/domain/employee_notification/model/employee_notification_datamodel.dart';
import 'package:savings_deposit/domain/remove_employee_notification/i_remove_employee_notification_repo.dart';
import 'package:savings_deposit/infrastructure/employee_notification/employee_notification_repo.dart';

import '../../domain/employee/bhverification/i_bhverification_repo/i_bhverification_repo.dart';
import '../../domain/employee/bhverification/models/bh_Delete_Scheduled_Transcations_model/bh_delete_scheduled_transcation_model.dart';
import '../../domain/employee/customer_search/i_customer_search_repo/i_customer_search_repo.dart';
import '../../domain/employee/customer_search/models/customer_search/customer_search_model.dart';
import '../../domain/employee/failures/employee_failures.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

@injectable
@prod
class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final IReportRepo iReportRepo;
  final ICustomerSearchRepo iemployeeRepo;
  final IBhverificationRepo bhverificationRepo;
  final IRemoveEmployeeNotification iRemoveEmployeeNotification;

  EmployeeBloc(
    this.iReportRepo,
    this.iemployeeRepo,
    this.bhverificationRepo,
    this.iRemoveEmployeeNotification,
  ) : super(EmployeeState.initial(loginToken: '')) {
    on<_Started>((event, emit) {
      emit(EmployeeState.initial(loginToken: state.loginToken,),);
    });
    on<_IndexChanging>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
    /////////////////////////Search Customer////////////////////////////////////////
    //---------------------search type -------------------------------------
    on<_RadioButttonGroupValueEvent>((event, emit) {
      emit(state.copyWith(
        radioButtonValue: event.selectedRadioButton,
        customerSearchFailureOrSucces: const None(),
        currentPage: 1,
      ));
      if (state.radioButtonValue == 0) {
        emit(state.copyWith(
          searchType: "customerName",
          customerSearchFailureOrSucces: const None(),
          currentPage: 1,
        ));
      } else if (state.radioButtonValue == 1) {
        emit(state.copyWith(
          searchType: "customerId",
          customerSearchFailureOrSucces: const None(),
          currentPage: 1,
        ));
      } else if (state.radioButtonValue == 2) {
        emit(state.copyWith(
          searchType: "phone",
          customerSearchFailureOrSucces: const None(),
          currentPage: 1,
        ));
      } else if (state.radioButtonValue == 3) {
        emit(state.copyWith(
          searchType: "pan",
          customerSearchFailureOrSucces: const None(),
          currentPage: 1,
        ));
      } else if (state.radioButtonValue == 4) {
        emit(state.copyWith(
          searchType: "documentno",
          customerSearchFailureOrSucces: const None(),
          currentPage: 1,
        ));
      }
    });
    //---------------------customer search api calling-------------------------------------

    on<_SearchCustomerLoading>((event, emit) async {
      if (event.searchValue.isEmpty || event.searchType.isEmpty) {
        return;
      }
      emit(state.copyWith(
        isLoading: true,
        currentPage: state.currentPage + 1,
        customerSearchFailureOrSucces: const None(),
      ));
      print(state.currentPage);
      final Either<EmployeeFailures, List<CustomerSearchModel>>
          customerSearchResult = await iemployeeRepo.searchCustomers(
        searchValue: event.searchValue,
        searchType: event.searchType,
        currentPage: state.currentPage,
        loginToken: state.loginToken,
      );
      emit(
        customerSearchResult.fold(
          (failure) => state.copyWith(
            isLoading: false,
            customerSearchFailureOrSucces: Some(Left(failure)),
          ),
          (success) {
            final List<CustomerSearchModel> _searchCustomerModelList =
                List.from(state.customerSearchModel!)..addAll(success);
            print(_searchCustomerModelList);
            return state.copyWith(
              isLoading: false,
              customerSearchFailureOrSucces: Some(
                Right(success),
              ),
              customerSearchModel: _searchCustomerModelList,
            );
          },
        ),
      );
    });
    on<_SearchCustomer>((event, emit) async {
      if (event.searchValue.isEmpty || event.searchType.isEmpty) {
        return;
      }
      emit(state.copyWith(
        isLoading: true,
        customerSearchFailureOrSucces: const None(),
      ));
      final Either<EmployeeFailures, List<CustomerSearchModel>>
          customerSearchResult = await iemployeeRepo.searchCustomers(
        searchValue: event.searchValue,
        searchType: event.searchType,
        currentPage: event.currentPage,
        loginToken: state.loginToken,
      );
      emit(
        customerSearchResult.fold(
          (failure) => state.copyWith(
            isLoading: false,
            customerSearchFailureOrSucces: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            customerSearchFailureOrSucces: Some(
              Right(success),
            ),
            customerSearchModel: success,
          ),
        ),
      );
    });
    /////////////////////////Reports////////////////////////////////////////
    //---------------------Customer wise Reports -------------------------------------
    on<_GetCustomerwiseReports>(
      ((event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          customerReportsFailureOrSuccess: none(),
        ));
        final Either<MainFailure, List<CustomerwiseReportModel>>
            customerReport = await iReportRepo.customerwiseReportDetails(
                branchId: event.branchId, firmId: event.firmId);
        emit(
          customerReport.fold(
            (failure) => state.copyWith(
              isLoading: false,
              customerReportsFailureOrSuccess: Some(Left(failure)),
            ),
            (success) => state.copyWith(
              isLoading: false,
              customerwisereports: success,
              customerReportsFailureOrSuccess: Some(
                Right(success),
              ),
            ),
          ),
        );
      }),
    );
    //---------------------BranchWise Reports -------------------------------------
    on<_GetBranchwiseReports>(
      ((event, emit) async {
        emit(state.copyWith(
            isLoading: true,
            todayNew: event.flag == 0 ? true : false,
            todaySettled: event.flag == 2 ? true : false,
            monthlyNew: event.flag == 1 ? true : false,
            monthlySettled: event.flag == 3 ? true : false,
            growthOS: event.flag == 4 ? true : false,
            reportType: event.flag == 0
                ? 'TODAY NEW'
                : event.flag == 1
                    ? 'MONTHLY NEW'
                    : event.flag == 2
                        ? 'TODAY SETTLED'
                        : event.flag == 3
                            ? 'MONTHLY SETTLED'
                            : event.flag == 4
                                ? 'GROWTHOS'
                                : '',
            growthReportFailureOrSuccess: none()));
        final Either<MainFailure, List<GrowthReportDataModel>> customerReport =
            await iReportRepo.branchwiseReportDetails(
                flag: event.flag, firmId: event.firmId);
        emit(
          customerReport.fold(
            (failure) => state.copyWith(
              isLoading: false,
              growthReportFailureOrSuccess: Some(Left(failure)),
            ),
            (success) => state.copyWith(
              isLoading: false,
              branchwisereports: success,
              growthReportFailureOrSuccess: Some(
                Right(success),
              ),
            ),
          ),
        );
      }),
    );

    /////////////////////////BH Verification////////////////////////////////////////
    //---------------------BH verifications Get Details -------------------------------------

    on<_bhverificationinitialEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            bhVerificationPage: true,
            bhverificationFailureOrSuccess: none(),
          ),
        );
        final Either<EmployeeFailures, List<BhverificationDatamodel>>
            bhverificationOption =
            await bhverificationRepo.getbhverificationDetails();
        emit(
          bhverificationOption.fold(
            (l) => state.copyWith(
              isLoading: false,
              bhverificationFailureOrSuccess: Some(Left(l)),
            ),
            (r) => state.copyWith(
              isLoading: false,
              bhVerificationPage: true,
              bhverificationdatas: r,
              bhverificationFailureOrSuccess: Some(Right(r)),
            ),
          ),
        );
      },
    );

    //----------------- Verify Dailogue Box Button in BH verifications -------------------------------

    on<_bhverificationApproveEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            bhVerificationPage: true,
            isLoading: true,
            bhverifyapprovestatusfailureorSuccess: none(),
          ),
        );
        final Either<EmployeeFailures, String> bhverifyApproveoption =
            await bhverificationRepo.putApproveBhstatusDetails(
          depositid: event.depositid,
          bhid: event.bhid.toInt(),
          chqNo: event.chequeno,
          branchid: event.branchid,
          firmid: event.firmid,
          moduleid: event.moduleid,
          chequecleardate: event.chequecleardate,
        );
        emit(
          bhverifyApproveoption.fold(
            (l) => state.copyWith(
              isLoading: false,
              bhverifyapprovestatusfailureorSuccess: Some(Left(l)),
            ),
            (r) => state.copyWith(
              isLoading: false,
              bhverifyapprovestatusfailureorSuccess: Some(Right(r)),
            ),
          ),
        );
      },
    );

//----------------bh-Return button in bhverification-----------
    on<_bhverificationReturnEvent>((event, emit) async {
      emit(state.copyWith(
        bhVerificationPage: true,
        isLoading: true,
        bhreturnfailureorsuccess: none(),
      ));
      final Either<EmployeeFailures, String> bhverifyReturnoption =
          await bhverificationRepo.putbhreturndetails(
        chequeno: event.chequeno,
        depositid: event.depositid,
      );
      emit(bhverifyReturnoption.fold(
          (l) => state.copyWith(
                isLoading: false,
                bhreturnfailureorsuccess: some(left(l)),
              ),
          (r) => state.copyWith(
                isLoading: false,
                bhreturnfailureorsuccess: some(right(r)),
              )));
    });

    //--------------------Dailogue box Bounce put details -------------------
    on<_BhBouncebuttonPressed>(
      (event, emit) async {
        emit(
          state.copyWith(
            bhVerificationPage: true,
            isLoading: true,
            bhbouncefailureorsuccess: none(),
          ),
        );
        final Either<EmployeeFailures, String> bhbouncedailogueOption =
            await bhverificationRepo.putbhbouncedetails(
                depositid: event.depositid,
                chequeno: event.chequeno,
                empid: event.empid);
        emit(
          bhbouncedailogueOption.fold(
            (l) => state.copyWith(
              isLoading: false,
              bhbouncefailureorsuccess: Some(Left(l)),
            ),
            (r) => state.copyWith(
              isLoading: false,
              bhbouncefailureorsuccess: Some(Right(r)),
            ),
          ),
        );
      },
    );
    //-----------------DropDownList-Bh verification Sort Get Details---------------------------

    on<_bhverificationSortEvent>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          bhVerificationPage: false,
          bhApprovePage: true,
          bhverificationsortfailureorsuccess: none(),
        ),
      );
      final Either<EmployeeFailures, List<BhverificationSortDataModel>>
          bhverificationsortapprove =
          await bhverificationRepo.getbhverificationsortDetails();
      emit(
        bhverificationsortapprove.fold(
          (l) => state.copyWith(
            bhVerificationPage: false,
            bhApprovePage: true,
            isLoading: false,
            bhverificationsortfailureorsuccess: Some(Left(l)),
          ),
          (r) => state.copyWith(
            bhApprovePage: true,
            bhVerificationPage: false,
            isLoading: false,
            bhverificationsortsdatas: r,
            bhverificationsortfailureorsuccess: Some(Right(r)),
          ),
        ),
      );
    });

    //---------------bh----------------------

    on<_bhverificationSortbhverificationpageEvent>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          bhVerificationPage: true,
          bhApprovePage: false,
          bhverificationsortfailureorsuccess: none(),
        ),
      );
      final Either<EmployeeFailures, List<BhverificationSortDataModel>>
          bhverificationsortapprove =
          await bhverificationRepo.getbhverificationsortDetails();
      emit(
        bhverificationsortapprove.fold(
          (l) => state.copyWith(
            bhVerificationPage: true,
            bhApprovePage: false,
            isLoading: false,
            bhverificationsortfailureorsuccess: Some(Left(l)),
          ),
          (r) => state.copyWith(
            bhApprovePage: false,
            bhVerificationPage: true,
            isLoading: false,
            bhverificationsortsdatas: r,
            bhverificationsortfailureorsuccess: Some(Right(r)),
          ),
        ),
      );
    });

    //-----------------------Bh Get Deleted Scheduled Transcation Details-------
    on<_Getbhdeletedscheduledtranscationdetails>((event, emit) async {
      emit(
        state.copyWith(
            isLoading: true,
            // bhVerificationPage: false,
            bhdeletescheduledtranscationFailureorSuccess: none()),
      );
      final Either<EmployeeFailures,
              List<BhDeleteScheduledTranscationsDataModel>>
          bhdeletescheduledtranscationoption =
          await bhverificationRepo.getBhDeleteScheduledTranscationDetails();
      emit(bhdeletescheduledtranscationoption.fold(
          (l) => state.copyWith(
              isLoading: false,
              bhdeletescheduledtranscationFailureorSuccess: Some(Left(l))),
          (r) => state.copyWith(
                isLoading: false,
                bhdeletescheduleddatas: r,
                bhdeletescheduledtranscationFailureorSuccess: Some(Right(r)),
              )));
    });

    //------------------------Bh Bounce Get details---------------------

    on<_GetBhBounceListdetails>((event, emit) async {
      emit(
        state.copyWith(
            isLoading: true,
            bhVerificationPage: false,
            bhApprovePage: false,
            bhbouncepage: true,
            bhverificationbouncefailureorsuccess: none()),
      );
      final Either<EmployeeFailures, List<BhverificationBounceDatamodel>>
          bhverificationbounce =
          await bhverificationRepo.getbhverificationbounceDetails();
      emit(
        bhverificationbounce.fold(
          (l) => state.copyWith(
            bhVerificationPage: false,
            bhApprovePage: false,
            bhbouncepage: true,
            isLoading: false,
            bhverificationbouncefailureorsuccess: Some(Left(l)),
          ),
          (r) => state.copyWith(
            bhApprovePage: false,
            bhbouncepage: true,
            bhVerificationPage: false,
            isLoading: false,
            bhbouncedatas: r,
            bhverificationbouncefailureorsuccess: Some(Right(r)),
          ),
        ),
      );
    });

    //-----------------Bh-Delete Scheduled Transations----------------
    on<_DeleteScheduledAnyMonth>((event, emit) {
      emit(state.copyWith(
        deleteflag: 0,
      ));
    });
    on<_deleteScheduledTransactionAllMonth>((event, emit) {
      emit(state.copyWith(
        deleteflag: 1,
      ));
    });

    on<_DeleteScheduledTranscations>((event, emit) async {
      final Either<EmployeeFailures, String> deletescheduleddeleteOption =
          await bhverificationRepo.putbhdeletescheduledtranscations(
              flag: event.flag,
              rtId: event.rtId,
              transactionDate: event.transactionDate,
              userType: event.userType,
              bhId: event.bhId);
      emit(deletescheduleddeleteOption.fold(
          (l) => state.copyWith(
                deletescheduleddeleteFailureOrSuccess: Some(left(l)),
                isLoading: false,
              ),
          (r) => state.copyWith(
              deletescheduleddeleteFailureOrSuccess: Some(Right(r)),
              isLoading: false)));
    });
    //----------------------------end-----------------------------------
    on<_Getemployeenotifications>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, employeenotificationsFailureOrSuccess: none()));
      final Either<MainFailure, List<EmployeeNotificationModel>>
          employeenotificationsFailureOrSuccess =
          await EmployeeNotificationRepo()
              .fetchEmployeenotifications(employeeid: event.employeeid);
      emit(
        employeenotificationsFailureOrSuccess.fold(
          (failure) => state.copyWith(
            isLoading: false,
            employeenotificationsFailureOrSuccess: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            employeenotificationsFailureOrSuccess: Some(
              Right(success),
            ),
            employeenotification: success,
          ),
        ),
      );
    });

    //-----------------------Dropdownlist----------------------
    on<_bhverifyDropdownListButtonEvent>((event, emit) {
      emit(state.copyWith(dropdownLabel: event.value));
    });

    on<_RemoveEmployeeNotification>((event, emit) async {
      Either<MainFailure, Unit> removeEmployeeNotificationOption =
          await iRemoveEmployeeNotification.removeEmployeeNotification(
              event.userId, event.alertId);

      emit(removeEmployeeNotificationOption.fold(
          (failure) => state.copyWith(
                bhbouncefailureorsuccess: none(),
                bhverificationFailureOrSuccess: none(),
                bhverificationbouncefailureorsuccess: none(),
                bhverificationsortfailureorsuccess: none(),
                bhverifyapprovestatusfailureorSuccess: none(),
                customerReportsFailureOrSuccess: none(),
                customerSearchFailureOrSucces: none(),
                employeenotificationsFailureOrSuccess: none(),
                growthReportFailureOrSuccess: none(),
                removeEmployeeNotificationFailureOrSuccess: Some(Left(failure)),
              ),
          (success) => state.copyWith(
              bhbouncefailureorsuccess: none(),
              bhverificationFailureOrSuccess: none(),
              bhverificationbouncefailureorsuccess: none(),
              bhverificationsortfailureorsuccess: none(),
              bhverifyapprovestatusfailureorSuccess: none(),
              customerReportsFailureOrSuccess: none(),
              customerSearchFailureOrSucces: none(),
              employeenotificationsFailureOrSuccess: none(),
              growthReportFailureOrSuccess: none(),
              removeEmployeeNotificationFailureOrSuccess:
                  Some(Right(success)))));
    });

    on<_SaveLoginToken>((event, emit) {
      emit(state.copyWith(
        loginToken: event.loginToken,

        bhreturnfailureorsuccess: const None(),
        bhbouncefailureorsuccess: const None(),
        bhverificationbouncefailureorsuccess: const None(),
        bhverificationFailureOrSuccess: const None(),
        bhverifyapprovestatusfailureorSuccess: const None(),
        bhverificationsortfailureorsuccess: const None(),
        deletescheduleddeleteFailureOrSuccess: const None(),
        bhdeletescheduledtranscationFailureorSuccess: const None(),
        customerReportsFailureOrSuccess: const None(),
        growthReportFailureOrSuccess: const None(),
        customerSearchFailureOrSucces: const None(),
        employeenotificationsFailureOrSuccess: const None(),
        removeEmployeeNotificationFailureOrSuccess: const None(),
      ));
      print("--------------------------------token--------------------"+state.loginToken);
    });
  }
}
