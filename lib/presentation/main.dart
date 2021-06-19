import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tft_flutter/common/component/theme.dart';
import 'package:tft_flutter/generated/codegen_loader.g.dart';
import 'package:tft_flutter/presentation/main_bloc/main_bloc.dart';

import 'main_screen/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isDark = prefs.getBool(MainBloc().themeKey) ?? false;

  //flutter pub run easy_localization:generate --source-dir ./assets/translations
  //flutter pub run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart
  //flutter pub run build_runner build --delete-conflicting-outputs

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('vi')],
        path: 'assets/translations',
        startLocale: Locale('en'),
        fallbackLocale: Locale('en'),
        assetLoader: CodegenLoader(),
        child: MyApp(
          isDark: isDark,
        )),
  );
}

class MyApp extends StatelessWidget {
  final isDark;

  const MyApp({Key? key, required this.isDark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainBloc>(
      create: (context) => MainBloc()..add(ThemeEvent(isDark: isDark)),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: state is ThemeState
                ? (state.isDark ? MyThemes.darkTheme : MyThemes.lightTheme)
                : MyThemes.lightTheme,
            home: MainScreen(),
          );
        },
      ),
    );
  }
}
