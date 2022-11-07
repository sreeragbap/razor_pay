import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/customer/mpin/failure/mpin_failure.dart';
import 'package:savings_deposit/domain/customer/mpin/i_mpin_repo.dart';
import 'package:savings_deposit/domain/login/i_login_repo.dart';
import 'package:savings_deposit/domain/login/models/login_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
@prod
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepo loginRepo;
  final IMpinRepo iMpinRepo;
  LoginBloc(
    this.loginRepo,
    this.iMpinRepo,
  ) : super(LoginState.initial()) {
    //     on<_NewSdEmployeeBranchDetails>((event, emit) {
    //   emit(state.copyWith(
    //     newSdfirmId: event.firmId,
    //     newSdbranchid: event.branchid,
    //     newSdUserId: event.employeecode,
    //     newSdbranchName: event.branchName,
    //   ));
    // });
    on<_ShowPassword>((event, emit) {
      emit(
        state.copyWith(
          showPassword: !state.showPassword,
          loginFailureOrSucces: const None(),
          mpinSuccessorfailureOption: none(),
          mpinRegistrationSuccessorfailureOption: none(),
        ),
      );
    });
    on<_LoginDetailsReset>((event, emit) async {
      emit(state.copyWith(
        loginDetails: null, loginFailureOrSucces: const None(),
        mpinSuccessorfailureOption: none(),
        mpinRegistrationSuccessorfailureOption: none(),
        //  const LoginDetails(
        //     empCode: -1,
        //     empName: "",
        //     empType: -1,
        //     firmId: -1,
        //     branchId: -1,
        //     branchname: "",
        //     statusId: -1,
        //     accessId: -1,
        //     designationId: -1,
        //     departmentId: -1,
        //     postId: -1,
        //     mobileNumber: "",
        //     sessionId: "",
        //     userType: "",
        //     customerId: "",
        //     customerName: "",
        //     maritalStatus: "",
        //     fatherName: "",
        //     phoneNumber: "",
        //     pinNo: -1,
        //     houseName: "",
        //     locality: "",
        //     postcode: "",
        //     loginToken: "")
      ));
    });

    on<_SubmitPressed>((event, emit) async {
      if (event.userId.isEmpty || event.password.isEmpty) {
        return;
      }

      emit(state.copyWith(isLoading: true,  loginFailureOrSucces: const None(),
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),));
      final Either<MainFailure, LoginDetails> loginOption =
          await loginRepo.loginWithIdAndPassword(
        splashToken: state.splashToken,
        userId: event.userId,
        password: event.password,
        firmId: event.firmId,
        moduleId: event.moduleId,
      );
      emit(
        loginOption.fold(
          (failure) => state.copyWith(
            isLoading: false, 
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),
            loginFailureOrSucces: Some(Left(failure),),
          ),
          (success) => state.copyWith(
            isLoading: false,
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),
            loginFailureOrSucces: Some(
              Right(success),
            ),
            loginDetails: success,
          ),
        ),
      );
    });

    on<_RestAll>((event, emit) {
      emit(LoginState.initial(),);
    });

    on<_GetdevicetokenUniqueID>((event, emit) async {
      try {
        String? result = await PlatformDeviceId.getDeviceId;
        print("token" + result!);
        emit(state.copyWith(
          deviceid: result,
          mpinSuccessorfailureOption: none(),
           loginFailureOrSucces: const None(),
      mpinRegistrationSuccessorfailureOption: none(),
        ));
      } catch (e) {
        emit(state.copyWith(deviceid: "invalid Token", loginFailureOrSucces: const None(),
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),));
      }
    });

    on<_MpinType>((event, emit) {
      emit(state.copyWith(mpin: event.mpin, loginFailureOrSucces: const None(),
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),));
    });

    on<_setMpinReg>((event, emit) {
      emit(state.copyWith(setmpin: event.setmpin, loginFailureOrSucces: const None(),
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),));
    });
    on<_confirmSetMpin>((event, emit) {
      emit(state.copyWith(confirmMpin: event.confirmMpin, loginFailureOrSucces: const None(),
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),));
    });

    on<_SaveSplashToken>((event, emit) {
      print("-----/////---------------" +
          state.splashToken +
          "---------////----------");
      emit(state.copyWith(splashToken: event.splashToken, loginFailureOrSucces: const None(),
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),));
      print(
          "-----//--------------" + state.splashToken + "---------//---------");
    });

    // on<_SaveSplashToken>((event, emit) {
    //   print(event.splashToken);
    //   emit(state.copyWith(
    //       splashToken: event.splashToken,
    //       mpinRegistrationSuccessorfailureOption: none(),
    //       mpinSuccessorfailureOption: none(),
    //       loginFailureOrSucces: none()));
    // });

    on<_mpinfetchpostdatas>((event, emit) async {
      emit(state.copyWith(
        mpinLoading: true, loginFailureOrSucces: const None(),
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),
      ));

      final Either<MpinFailure, LoginDetails> mpinOption =
          await iMpinRepo.getMpinDetails(
              mpin: event.mpincode,
              deviceToken: state.deviceid,
              loginToken: state.splashToken);
      emit(mpinOption.fold(
          (failure) => state.copyWith(
                mpinLoading: false, loginFailureOrSucces: const None(),
      mpinRegistrationSuccessorfailureOption: none(),
                mpinSuccessorfailureOption: Some(Left(failure)),
              ),
          (success) => state.copyWith(
              mpinLoading: true, loginFailureOrSucces: const None(),
      mpinRegistrationSuccessorfailureOption: none(),
              mpinSuccessorfailureOption: Some(Right(success)),
              loginDetails: success)));
    });
//-------------------Mpin--------Registration--------------------------

    on<_putMpinRegistration>((event, emit) async {
      emit(state.copyWith(
        mpinRegistrationLoading: true, loginFailureOrSucces: const None(),
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),
      ));
      final Either<MpinFailure, String> mpinRegistrationOption =
          await iMpinRepo.putmpinregistration(
              userid: event.userid,
              mobileno: event.mobileno,
              mpin: event.mpin,
              // imeino: event.imeino,
              deviceToken: state.deviceid,
              smsRefId: event.smsRefId,
              loginToken: state.splashToken);

      // putMpinRegistration(
      //     userid: event.userid,
      //     mobileno: event.mobileno,
      //     mpin: event.mpin,
      //     imeino: event.imeino,
      //     deviceToken: state.deviceid,
      //     smsRefId: event.smsRefId);
    });
  }
}
