import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tft_flutter/generated/locale_keys.g.dart';
import 'package:tft_flutter/presentation/main_bloc/main_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (ctx) => Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          color: Theme.of(ctx).bottomAppBarColor,
          animationCurve: Curves.linear,
          letIndexChange: (index) => true,
          backgroundColor: Theme.of(ctx).scaffoldBackgroundColor,
          animationDuration: Duration(milliseconds: 300),
          items: [
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
          ],
          onTap: (index) {
            setState(() {
              selectIndex = index;
            });
          },
        ),
        body: [Screen1(), Screen2(), Screen3(), SettingPage()]
            .elementAt(selectIndex),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(LocaleKeys.user.tr()),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Screen2'),
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
        child: Text('Screen3'),
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
            child: IconButton(
              onPressed: () {
                BlocProvider.of<MainBloc>(context).add(
                  ThemeEvent(
                      isDark: Theme.of(ctx).brightness != Brightness.dark),
                );
              },
              icon: Icon(Icons.change_circle_outlined),
            ),
          ),
        ),
      ),
    );
  }
}
