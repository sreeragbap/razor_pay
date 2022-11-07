part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    required String loginToken,
    required int index,
    required bool isLoading,
    required int radioButtonValue,
    required String searchType,
    required int currentPage,
    //-------------------Reports--------

    required bool todayNew,
    required bool todaySettled,
    required bool monthlyNew,
    required bool monthlySettled,
    required bool growthOS,
    required String reportType,
    List<CustomerwiseReportModel>? customerwisereports,
    List<GrowthReportDataModel>? branchwisereports,
    List<CustomerSearchModel>? customerSearchModel,
    required Option<Either<EmployeeFailures, List<CustomerSearchModel>>>
        customerSearchFailureOrSucces,
    required Option<Either<MainFailure, List<CustomerwiseReportModel>>>
        customerReportsFailureOrSuccess,
    required Option<Either<MainFailure, List<GrowthReportDataModel>>>
        growthReportFailureOrSuccess,
    required Option<Either<MainFailure, List<EmployeeNotificationModel>>>
        employeenotificationsFailureOrSuccess,
    required Option<Either<MainFailure, Unit>>
        removeEmployeeNotificationFailureOrSuccess,

    ////////////////BH verification//////////////////////////
    required bool? bhVerificationPage,
    required bool? bhApprovePage,
    required bool? bhbouncepage,
    required String? dropdownLabel,
    required int? deleteflag,
    List<BhverificationDatamodel>? bhverificationdatas,
    List<BhverificationSortDataModel>? bhverificationsortsdatas,
    List<BhverificationBounceDatamodel>? bhbouncedatas,
    List<BhDeleteScheduledTranscationsDataModel>? bhdeletescheduleddatas,
    String? bhverifyapprovedata,
    String? bhBouncechequedata,
    String? bhReturndata,
    required Option<Either<EmployeeFailures, String>>
        deletescheduleddeleteFailureOrSuccess,
    required Option<Either<EmployeeFailures, String>> bhreturnfailureorsuccess,
    List<EmployeeNotificationModel>? employeenotification,
    required Option<Either<EmployeeFailures, List<BhverificationDatamodel>>>
        bhverificationFailureOrSuccess,
    required Option<
            Either<EmployeeFailures,
                List<BhDeleteScheduledTranscationsDataModel>>>
        bhdeletescheduledtranscationFailureorSuccess,
    required Option<Either<EmployeeFailures, String>>
        bhverifyapprovestatusfailureorSuccess,
    required Option<
            Either<EmployeeFailures, List<BhverificationBounceDatamodel>>>
        bhverificationbouncefailureorsuccess,
    required Option<Either<EmployeeFailures, List<BhverificationSortDataModel>>>
        bhverificationsortfailureorsuccess,
    required Option<Either<EmployeeFailures, String>> bhbouncefailureorsuccess,

    /////--------------------------End-------------------///
  }) = _EmployeeState;
  factory EmployeeState.initial({required String loginToken}) {
    return  EmployeeState(
      index: 0,
      isLoading: false,
      customerwisereports: [],
      branchwisereports: [],
      employeenotification: [],
      bhdeletescheduleddatas: [],
      bhdeletescheduledtranscationFailureorSuccess: const None(),
      customerReportsFailureOrSuccess: const None(),
      growthReportFailureOrSuccess: const None(),
      customerSearchFailureOrSucces: const None(),
      employeenotificationsFailureOrSuccess: const None(),
      removeEmployeeNotificationFailureOrSuccess: const None(),
      radioButtonValue: -1,
      searchType: '',
      ///////////////////////Bh verification//////////////////////////////////
      bhVerificationPage: true,
      bhApprovePage: false,
      bhbouncepage: false,
      dropdownLabel: "Sort",
      deleteflag: 0,
      bhverificationdatas: [],
      bhbouncedatas: [],
      bhverificationsortsdatas: [],
      deletescheduleddeleteFailureOrSuccess: const None(),
      // bhdeletescheduledtranscationFailureorSuccess: None(),

      bhreturnfailureorsuccess: const None(),
      bhbouncefailureorsuccess: const None(),
      bhverificationbouncefailureorsuccess: const None(),
      bhverificationFailureOrSuccess: const None(),
      bhverifyapprovestatusfailureorSuccess: const None(),
      bhverificationsortfailureorsuccess: const None(),
      //-----------------------------End--------------------------------------------

      todayNew: false,
      todaySettled: false,
      monthlyNew: false,
      monthlySettled: false,
      growthOS: false,
      reportType: '', currentPage: 1,
      loginToken: loginToken,
      // bhdeletescheduledtranscationFailureorSuccess: None(),
    );
  }
}
