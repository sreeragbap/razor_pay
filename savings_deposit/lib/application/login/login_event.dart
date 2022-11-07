part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.showPassword() = _ShowPassword;

  const factory LoginEvent.submitPressed({
    required String userId,
    required String password,
    required int firmId,
    required int moduleId,
  }) = _SubmitPressed;

  const factory LoginEvent.restAll() = _RestAll;

  // const factory LoginEvent.newSdEmployeeBranchDetails({
  //   required int firmId,
  //   required int branchid,
  //   required int employeecode,
  //   required String branchName,
  // }) = _NewSdEmployeeBranchDetails;

  //---------------------------------MPIN lOGIN----------------------------------

  const factory LoginEvent.getdevicetokenUniqueID() = _GetdevicetokenUniqueID;

  const factory LoginEvent.mpinfetchpostdatas({
    required String mpincode,
    required String deviceid,
  }) = _mpinfetchpostdatas;

  const factory LoginEvent.mpinType(String mpin) = _MpinType;

  const factory LoginEvent.setMpinReg(String setmpin) = _setMpinReg;

  const factory LoginEvent.confirmSetMpin(String confirmMpin) = _confirmSetMpin;

  const factory LoginEvent.putMpinRegistration(
      {required String userid,
      required String mobileno,
      required String mpin,
      // required String imeino,
      required String deviceToken,
      required String smsRefId}) = _putMpinRegistration;

  const factory LoginEvent.saveSplashToken({required String splashToken}) =
      _SaveSplashToken;

  const factory LoginEvent.loginDetailsReset() = _LoginDetailsReset;
}
