import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/splash/i_splash_repo.dart';

import 'package:savings_deposit/domain/splash/models/splash_model.dart';

part 'splash_state.dart';
part 'splash_event.dart';
part 'splash_bloc.freezed.dart';

@injectable
@prod
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ISplashRepo splashRepository;
  SplashBloc(this.splashRepository) : super(SplashState.initialSplashState()) {
    on<SplashEvent>((event, emit) async {
      emit(state.copyWith(
        isloading: true,
        splashpageFailureOrSuccess: none(),
      ));
      final Either<MainFailure, SplashModel> splashOption =
          await splashRepository.getApplicationDetails(event.applicationId);
      emit(
        splashOption.fold(
          (l) => state.copyWith(
            isloading: false,
            splashpageFailureOrSuccess: Some(
              Left(l),
            ),
          ),
          (r) => state.copyWith(
            isloading: false,
            splashpageFailureOrSuccess: Some(
              Right(r),
            ),
            splashModel: r,
          ),
        ),
      );
    });
  }
}
