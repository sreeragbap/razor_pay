import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/confirm_otp/failures/confirm_otp_failure.dart';

import '../../domain/confirm_otp/i_repo/i_confirm_otp_repo.dart';

part 'otp_verification_event.dart';
part 'otp_verification_state.dart';
part 'otp_verification_bloc.freezed.dart';

@injectable
@prod
class OtpVerificationBloc
    extends Bloc<OtpVerificationEvent, OtpVerificationState> {
  final IConfirmOtpRepo iConfirmOtpRepo;
  OtpVerificationBloc(this.iConfirmOtpRepo)
      : super(OtpVerificationState.initialState()) {
    on<_OtpChanged>((event, emit) {
      emit(state.copyWith(
        otp: event.otp,
        confirmOtpFailureOrSucessOption: none(),
        resendOTPFailureOrSucessOption: none(),
      ));
    });
    on<_UpdateCustomerId>((event, emit) {
      emit(state.copyWith(
        customerId: event.customerId,
        confirmOtpFailureOrSucessOption: none(),
        resendOTPFailureOrSucessOption: none(),
      ));
    });
    on<_ActiveResendOtp>((event, emit) {
      emit(state.copyWith(
        activeResendOtp: !state.activeResendOtp,
        confirmOtpFailureOrSucessOption: none(),
        resendOTPFailureOrSucessOption: none(),
      ));
    });
    on<_ResendOTP>((event, emit) async {
      emit(state.copyWith(
        confrimOtp: true,
        confirmOtpFailureOrSucessOption: none(),
        resendOTPFailureOrSucessOption: none(),
      ));
      final Either<ConfirmOtpFailure, String> resendOtpApiResults =
          await iConfirmOtpRepo.resendOtp(mobileNumber: event.mobilenumber);
      emit(resendOtpApiResults.fold(
        (l) => state.copyWith(
          confrimOtp: false,
          confirmOtpFailureOrSucessOption: none(),
          resendOTPFailureOrSucessOption: Some(
            Left(l),
          ),
        ),
        (r) => state.copyWith(
            confrimOtp: false,
            confirmOtpFailureOrSucessOption: none(),
            resendOTPFailureOrSucessOption: Some(Right(r)),
            transactionid: r),
      ));
    });
    on<_OtpBUttonPressed>((event, emit) async {
      emit(state.copyWith(
        confrimOtp: true,
        confirmOtpFailureOrSucessOption: none(),
        resendOTPFailureOrSucessOption: none(),
      ));
      final Either<ConfirmOtpFailure, String> confirmOtpApiResults =
          await iConfirmOtpRepo.confirmOtp(
        transactionId: int.parse(event.transactionid) ,
        otp:int.parse(state.otp!) ,
        splashToken: state.splashToken!,
      );
      emit(confirmOtpApiResults.fold(
        (l) => state.copyWith(
          confrimOtp: false,
          resendOTPFailureOrSucessOption: none(),
          confirmOtpFailureOrSucessOption: Some(
            Left(l),
          ),
        ),
        (r) => state.copyWith(
          confrimOtp: false,
          resendOTPFailureOrSucessOption: none(),
          confirmOtpFailureOrSucessOption: Some(Right(r)),
        ),
      ));
    });

    on<_SaveSplashToken>((event, emit) {
      emit(state.copyWith(splashToken: event.splashToken));
    });
  }
}
