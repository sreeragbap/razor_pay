import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number_verification_event.dart';
part 'phone_number_verification_state.dart';
part 'phone_number_verification_bloc.freezed.dart';

class PhoneNumberVerificationBloc
    extends Bloc<PhoneNumberVerificationEvent, PhoneNumberVerificationState> {
  PhoneNumberVerificationBloc()
      : super(PhoneNumberVerificationState.initial()) {
    on<_CaptchaEvent>((event, emit) {
      emit(state.copyWith(enableSubmitButton: true));
    });
    on<_Submit>((event, emit) {
      if (state.phoneNumber.isEmpty || state.phoneNumber.length < 10) {
        return;
      }
      ////TO-DO: DO API CALL
    });
    on<_UpdatePhoneNumber>((event, emit) {
      emit(
        state.copyWith(phoneNumber: event.phoneNumber),
      );
    });
    on<_DisableSendOtpButton>((event, emit) {
      emit(state.copyWith(enableSubmitButton: false));
    });
  }
}
