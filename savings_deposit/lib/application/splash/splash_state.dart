part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required bool isloading,
    SplashModel? splashModel,
    required Option<Either<MainFailure, SplashModel>>
        splashpageFailureOrSuccess,
  }) = _SplashState;
  factory SplashState.initialSplashState() {
    return const SplashState(
      isloading: false,
      splashpageFailureOrSuccess: None(),
    );
  }
}
