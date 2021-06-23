part of 'main_bloc.dart';

@immutable
abstract class MainEvent {}

class ThemeEvent extends MainEvent {
  final bool isDark;

  ThemeEvent({required this.isDark});
}
