import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/forgot_password/failure/forgot_password_failure.dart';
import 'package:savings_deposit/domain/forgot_password/i_repo/forgot_password_irepo.dart';
import 'package:savings_deposit/domain/registration/models/otp_model/otp_model.dart';

part 'forgotpassword_event.dart';
part 'forgotpassword_state.dart';
part 'forgotpassword_bloc.freezed.dart';

@injectable
@prod
class ForgotpasswordBloc
    extends Bloc<ForgotpasswordEvent, ForgotpasswordState> {
  final IForgotPassword iForgotPassword;
  ForgotpasswordBloc(this.iForgotPassword)
      : super(ForgotpasswordState.initial()) {
    on<_ForgotPasswordApiCall>((event, emit) async {
      if (event.customerId.isEmpty) {
        return;
      }

      emit(state.copyWith(
          customerId: event.customerId,
          isLoading: true,
          forgotPasswordFailureOrSucces: const None()));
      final Either<ForgotPasswordFailure, OtpModel> loginOption =
          await iForgotPassword.checkMobileNumberAndSendOTP(
              customerId: event.customerId, splashToken: state.splashToken!);
      emit(
        loginOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            passwordChnageFilureOrSuccess: none(),
            forgotPasswordFailureOrSucces: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            passwordChnageFilureOrSuccess: none(),
            forgotPasswordFailureOrSucces: Some(
              Right(success),
            ),
            otpModel: success,
          ),
        ),
      );
    });
    on<_PasswordChange>((event, emit) async {
      if (state.customerId.isEmpty) {
        return;
      }

      emit(state.copyWith(
          isLoading: true, forgotPasswordFailureOrSucces: const None()));
      final Either<ForgotPasswordFailure, String> loginOption =
          await iForgotPassword.changePassword(
              mobileNumber: state.otpModel!.phone1.toString(),
              password: event.password,
              customerId: state.customerId,
              splashToken: state.splashToken!);
      emit(
        loginOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            forgotPasswordFailureOrSucces: none(),
            passwordChnageFilureOrSuccess: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            forgotPasswordFailureOrSucces: none(),
            passwordChnageFilureOrSuccess: Some(
              Right(success),
            ),
            response: success,
          ),
        ),
      );
    });
    on<_FindMobileAndSendOtp>((event, emit) async {
      emit(state.copyWith(
          customerId: event.customerId,
          forgotPasswordFailureOrSucces: const None(),
          passwordChnageFilureOrSuccess: const None()));
      final Either<ForgotPasswordFailure, OtpModel> loginOption =
          await iForgotPassword.checkMobileNumberAndSendOTP(
              customerId: event.customerId, splashToken: state.splashToken!);

      emit(loginOption.fold(
          (failure) => state.copyWith(
              passwordChnageFilureOrSuccess: const None(),
              forgotPasswordFailureOrSucces: Some(Left(failure))),
          (success) => state.copyWith(
              passwordChnageFilureOrSuccess: const None(),
              forgotPasswordFailureOrSucces: Some(Right(success)),
              otpModel: success)));
    });
    on<_SaveSplashToken>((event, emit) {
      emit(state.copyWith(splashToken: event.splashToken));
    });
  }
}
