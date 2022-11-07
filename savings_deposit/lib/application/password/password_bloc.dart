import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'password_event.dart';
part 'password_state.dart';
part 'password_bloc.freezed.dart';

@injectable
@prod
class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  PasswordBloc() : super(PasswordState.initial()) {
    on<_CheckPasswordEvent>((event, emit) {
      RegExp _password = RegExp(
          r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$");

      if (state.strength >= 0.90 && _password.hasMatch(state.newPassword)) {
        emit(state.copyWith(displayText: 'The Password is Strong'));
      } else {
        emit(state.copyWith(displayText: 'The Password is weak'));
      }
    });
    // RegExp numReg = RegExp(r".*[0-9].*");
    // RegExp letterReg = RegExp(r".*[A-Za-z].*");
    // on<_CheckPasswordEvent>((event, emit) {
    //   String _password = event.value.trim();
    //   if (_password.isEmpty) {
    //     emit(state.copyWith(
    //         displayText: "Please enter your Password", strength: 0));
    //   } else if (_password.length < 6) {
    //     emit(state.copyWith(
    //         displayText: "Your Password is too Short", strength: 1 / 4));
    //   } else if (_password.length < 8) {
    //     emit(state.copyWith(
    //         displayText: "Your password is acceptable but not Strong",
    //         strength: 2 / 4));
    //   } else {
    //     if (!letterReg.hasMatch(_password) || !numReg.hasMatch(_password)) {
    //       emit(state.copyWith(
    //           displayText: "Your Password is Strong", strength: 3 / 4));
    //     } else {
    //       emit(state.copyWith(
    //           displayText: "Your Password is great", strength: 1));
    //     }
    //   }
    // });
    on<_NewPassword>(((event, emit) {
      emit(state.copyWith(newPassword: event.newPassword));
    }));

    on<_ConfirmPassword>((event, emit) {
      emit(state.copyWith(confirmPassword: event.confirmPassword));
    });

    on<_UpdateStrengthValue>((event, emit) {
      emit(state.copyWith(strength: event.strength));
    });
    on<_Reset>((event, emit) {
      emit(PasswordState.initial());
    });
  }
}
