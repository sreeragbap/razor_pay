import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../generated/l10n.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';

@injectable
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageState.initial()) {
    on<_Changetoenglish>((event, emit) async {
      await S.load(const Locale("en", "US"));
      emit(state.copyWith(isMalayalam: false));
    });
    on<_Changetomalayalam>((event, emit) async {
      await S.load(const Locale("ml", "IN"));
      emit(state.copyWith(isMalayalam: true));
    });
  }
}
