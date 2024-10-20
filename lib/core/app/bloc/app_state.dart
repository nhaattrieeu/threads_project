part of 'app_cubit.dart';

class AppState extends Equatable {
  const AppState({required this.brightness, required this.locale});

  final Brightness brightness;
  final Locale locale;

  AppState copyWith({
    Brightness? brightness,
    Locale? locale,
  }) {
    return AppState(
      brightness: brightness ?? this.brightness,
      locale: locale ?? this.locale,
    );
  }

  @override
  List<Object> get props => [brightness, locale];
}
