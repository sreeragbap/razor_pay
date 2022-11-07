part of 'phone_number_verification_bloc.dart';

@freezed
class PhoneNumberVerificationState with _$PhoneNumberVerificationState {
  const factory PhoneNumberVerificationState({
    required bool enableSubmitButton,
    required String phoneNumber,
  }) = _PhoneNumberVerificationState;
  factory PhoneNumberVerificationState.initial() {
    return const PhoneNumberVerificationState(
      enableSubmitButton: false,
      phoneNumber: "",
    );
  }
}
