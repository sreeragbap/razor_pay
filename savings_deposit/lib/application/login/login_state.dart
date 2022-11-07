part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required bool showPassword,
    required String userID,
    required String password,
    required Option<Either<MainFailure, LoginDetails>> loginFailureOrSucces,
    LoginDetails? loginDetails,

    //----------------Mpin-----------------

    required bool mpinLoading,
    required bool mpinRegistrationLoading,
    //---------------MPIN LOGIN-------------------

    // required String devicetokenid,
    required String mpincode,
    required String deviceid,
    required String mpin,
    required String setmpin,
    required String confirmMpin,
    required String splashToken,
    required Option<Either<MpinFailure, LoginDetails>>
        mpinSuccessorfailureOption,
    required Option<Either<MpinFailure, String>>
        mpinRegistrationSuccessorfailureOption,

    // required int newSdfirmId,
    // required int newSdbranchid,
    // required int newSdUserId,
    // required String newSdbranchName,
  }) = _LoginState;
  factory LoginState.initial() {
    return LoginState(
      isLoading: false,
      showPassword: true,
      userID: "",
      password: "",
      // newSdbranchName: '',
      // newSdbranchid: 0,
      // newSdfirmId: 0,
      // newSdUserId: 0,
      splashToken: "",
      mpinLoading: true,
      loginFailureOrSucces: const None(),
      mpinSuccessorfailureOption: none(),
      mpinRegistrationSuccessorfailureOption: none(),
      mpinRegistrationLoading: false,
//------Mpin-----------

      // devicetokenid: "",
      mpincode: "",
      deviceid: "",
      mpin: "",
      setmpin: "",
      confirmMpin: "",
    );
  }
}
