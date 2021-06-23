part of 'main_bloc.dart';

@immutable
abstract class MainState {}

class InitState extends MainState {}

class ThemeState extends MainState {
  final bool isDark;

  ThemeState({required this.isDark});
}
