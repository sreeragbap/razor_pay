part of 'phone_number_verification_bloc.dart';

@freezed
class PhoneNumberVerificationEvent with _$PhoneNumberVerificationEvent {
  const factory PhoneNumberVerificationEvent.submit() = _Submit;
  const factory PhoneNumberVerificationEvent.captchaEvent() = _CaptchaEvent;
  const factory PhoneNumberVerificationEvent.updatePhoneNumber(
      String phoneNumber) = _UpdatePhoneNumber;
  const factory PhoneNumberVerificationEvent.disableSendOtpButton() =
      _DisableSendOtpButton;
}
