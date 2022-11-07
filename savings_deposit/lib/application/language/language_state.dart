part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    required bool isMalayalam,
  }) = _LanguageState;
  factory LanguageState.initial() {
    return const LanguageState(isMalayalam: false);
  }
}
