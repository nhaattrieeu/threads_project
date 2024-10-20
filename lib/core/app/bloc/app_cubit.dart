import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit()
      : super(const AppState(
          brightness: Brightness.dark,
          locale: Locale("vi"),
        ));

  void setLanguage(Locale locale) {
    emit(state.copyWith(locale: locale));
  }

  Locale getCurrentLanguage() {
    return state.locale;
  }

  void setBrightness(Brightness brightness) {
    emit(state.copyWith(brightness: brightness));
  }

  Brightness getCurrentBrightness() {
    return state.brightness;
  }
}
