import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tft_flutter/generated/locale_keys.g.dart';
import 'package:tft_flutter/presentation/all_champs_and_items/ui/display_champs_and_items.dart';
import 'package:tft_flutter/presentation/main_bloc/main_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectIndex = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  final List<Widget> _listItemIcons = [
    Icon(
      Icons.local_police_outlined,
    ),
    Icon(
      Icons.emoji_events_outlined,
    ),
    Icon(
      Icons.construction_outlined,
    ),
    Icon(
      Icons.manage_accounts_outlined,
    ),
  ];
  final List<Widget> _listScreen = [
    DisplayChampsAndItems(),
    Screen2(),
    Screen3(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (ctx) => WillPopScope(
        onWillPop: () async {
          return _onWillPop(context);
        },
        child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            height: 55,
            index: _selectIndex,
            color: Theme.of(ctx).bottomAppBarColor,
            animationCurve: Curves.linear,
            letIndexChange: (index) => true,
            backgroundColor: Theme.of(ctx).scaffoldBackgroundColor,
            animationDuration: Duration(milliseconds: 300),
            items: _listItemIcons,
            onTap: (index) {
              setState(() {
                _selectIndex = index;
                _pageController.animateToPage(index,
                    duration: Duration(milliseconds: 600), curve: Curves.ease);
              });
            },
          ),
          body: PageView(
            physics: AlwaysScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectIndex = index;
              });
            },
            children: _listScreen,
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text(
              LocaleKeys.warning_sure.tr(),
              style: Theme.of(context).textTheme.headline1,
            ),
            content: new Text(LocaleKeys.ask_again.tr(),
                style: Theme.of(context).textTheme.bodyText1),
            actions: <Widget>[
              new ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: new Text(LocaleKeys.stay_here.tr(),
                      style: Theme.of(context).textTheme.bodyText2)),
              new ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: new Text(LocaleKeys.exit_app.tr(),
                      style: Theme.of(context).textTheme.bodyText2)),
            ],
          ),
        )) ??
        false;
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          LocaleKeys.screen_2.tr(),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          LocaleKeys.screen_3.tr(),
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Builder(
          builder: (ctx) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<MainBloc>(context).add(
                      ThemeEvent(
                          isDark: Theme.of(ctx).brightness != Brightness.dark),
                    );
                  },
                  icon: Icon(Icons.change_circle_outlined),
                ),
                Text(LocaleKeys.change_theme.tr()),
                IconButton(
                  onPressed: () {
                    if (context.locale.languageCode == 'en') {
                      context.setLocale(
                        Locale('vi'),
                      );
                    } else {
                      context.setLocale(
                        Locale('en'),
                      );
                    }
                  },
                  icon: Icon(Icons.language_outlined),
                ),
                Text(
                  LocaleKeys.change_language.tr(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
