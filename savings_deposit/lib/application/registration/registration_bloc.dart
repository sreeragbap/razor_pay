import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/registration/irepo/registration_irepo.dart';
import 'package:savings_deposit/domain/registration/models/get_employee/get_employee_model.dart';
import 'package:savings_deposit/domain/registration/models/otp_model/otp_model.dart';

import '../../domain/registration/failure/iregister_failure.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
@prod
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final IRegistrationRepo iRegistrationRepo;
  RegistrationBloc(this.iRegistrationRepo)
      : super(RegistrationState.initial()) {
    on<_Loginid>((event, emit) {
      emit(state.copyWith(
        id: event.loginId,
        userNameAlreadyExistOrNot: none(),
        getEmployeeFailureOrSucces: none(),
        registerEmployeeSuccessOrFailure: none(),
        mobileNumberSearchFailureOrSucces: none(),
      ));
    });
    on<_FindMobileAndSendOtp>((event, emit) async {
      if (event.customerId.isEmpty) {
        return;
      }
      emit(state.copyWith(
        isLoading: true,
        userNameAlreadyExistOrNot: none(),
        getEmployeeFailureOrSucces: none(),
        registerEmployeeSuccessOrFailure: none(),
        mobileNumberSearchFailureOrSucces: const None(),
      ));
      final Either<RegistrationFailure, OtpModel> loginOption =
          await iRegistrationRepo.checkMobileNumberAndSendOTP(
              customerId: event.customerId, splashToken: state.splashToken);
      emit(
        loginOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            getEmployeeFailureOrSucces: none(),
            userNameAlreadyExistOrNot: none(),
            registerEmployeeSuccessOrFailure: none(),
            mobileNumberSearchFailureOrSucces: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            userNameAlreadyExistOrNot: none(),
            getEmployeeFailureOrSucces: none(),
            registerEmployeeSuccessOrFailure: none(),
            mobileNumberSearchFailureOrSucces: Some(
              Right(success),
            ),
            otpModel: success,
          ),
        ),
      );
    });
    on<_PostRegistration>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        mobileNumberSearchFailureOrSucces: const None(),
        userNameAlreadyExistOrNot: none(),
        getEmployeeFailureOrSucces: none(),
        registerEmployeeSuccessOrFailure: none(),
      ));
      final Either<RegistrationFailure, String> loginOption =
          await iRegistrationRepo.registerCustomer(
        mobileNumber: state.otpModel!.phone1.toString(),
        branchid: state.otpModel!.branchId!,
        firmid: state.otpModel!.firmId!,
        password: event.password,
        id: state.customerId,
        userid: event.userName,
        splashToken: state.splashToken,
      );
      emit(
        loginOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            userNameAlreadyExistOrNot: none(),
            getEmployeeFailureOrSucces: none(),
            mobileNumberSearchFailureOrSucces: none(),
            registerEmployeeSuccessOrFailure: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            userNameAlreadyExistOrNot: none(),
            getEmployeeFailureOrSucces: none(),
            mobileNumberSearchFailureOrSucces: none(),
            registerEmployeeSuccessOrFailure: Some(
              Right(success),
            ),
            registrationPostResponse: success,
          ),
        ),
      );
    });
    on<_UpdateCustomerId>((event, emit) {
      emit(state.copyWith(
        customerId: event.customerId,
        userNameAlreadyExistOrNot: none(),
        getEmployeeFailureOrSucces: none(),
        registerEmployeeSuccessOrFailure: none(),
        mobileNumberSearchFailureOrSucces: none(),
      ));
    });
    on<_GetEmployeeDetails>((event, emit) async {
      if (event.customerId.isEmpty) {
        return;
      }
      emit(state.copyWith(
        isLoading: true,
        userNameAlreadyExistOrNot: none(),
        getEmployeeFailureOrSucces: none(),
        registerEmployeeSuccessOrFailure: none(),
        mobileNumberSearchFailureOrSucces: const None(),
      ));
      final Either<RegistrationFailure, GetCustomerDetails> loginOption =
          await iRegistrationRepo.getCustomerDetails(
              customerId: event.customerId, splashToken: state.splashToken);

      emit(
        loginOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            mobileNumberSearchFailureOrSucces: none(),
            userNameAlreadyExistOrNot: none(),
            registerEmployeeSuccessOrFailure: none(),
            getEmployeeFailureOrSucces: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            mobileNumberSearchFailureOrSucces: none(),
            userNameAlreadyExistOrNot: none(),
            registerEmployeeSuccessOrFailure: none(),
            getEmployeeFailureOrSucces: Some(
              Right(success),
            ),
            getCustomerDetails: success,
          ),
        ),
      );
    });
    on<_UpdateUserName>((event, emit) {
      print(state.userName);
      emit(state.copyWith(
        userName: event.userName,
        userNameAlreadyExistOrNot: none(),
        getEmployeeFailureOrSucces: none(),
        registerEmployeeSuccessOrFailure: none(),
        mobileNumberSearchFailureOrSucces: none(),
      ));
    });

    on<_UserNameAlreadyExistOrNot>((event, emit) async {
      final Either<RegistrationFailure, String> userNameExistOrNot =
          await iRegistrationRepo.userNameAlreadyExistOrNot(
              userName: event.userName, splashToken: state.splashToken);

      emit(userNameExistOrNot.fold(
          (failure) => state.copyWith(
                getEmployeeFailureOrSucces: none(),
                registerEmployeeSuccessOrFailure: none(),
                mobileNumberSearchFailureOrSucces: none(),
                userNameAlreadyExistOrNot: Some(Left(failure)),
              ),
          (success) => state.copyWith(
                getEmployeeFailureOrSucces: none(),
                registerEmployeeSuccessOrFailure: none(),
                mobileNumberSearchFailureOrSucces: none(),
                userNameAlreadyExistOrNot: Some(
                  Right(success),
                ),
                userNameResponse: success,
              )));
    });
    on<_SaveSplashToken>((event, emit) {
      emit(state.copyWith(
        splashToken: event.splashToken,
        userNameAlreadyExistOrNot: none(),
        getEmployeeFailureOrSucces: none(),
        registerEmployeeSuccessOrFailure: none(),
        mobileNumberSearchFailureOrSucces: none(),
      ));
    });
  }
}
