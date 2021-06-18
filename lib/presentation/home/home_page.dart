import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tft_flutter/presentation/main_bloc/main_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> listWidget(BuildContext context) {
    return <Widget>[
      Text(
        'Index 0: Home',
        style: Theme.of(context).textTheme.headline1,
      ),
      Text(
        'Index 1: Business',
        style: Theme.of(context).textTheme.headline1,
      ),
      SettingPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Builder(
        builder: (ctx) => Center(
          child: listWidget(ctx).elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:
            Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
        onTap: _onItemTapped,
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
