import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(InitState());
  final String themeKey = 'THEME_KEY';
  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    if (event is ThemeEvent) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool(themeKey, event.isDark);
      yield ThemeState(isDark: event.isDark);
    }
  }
}
