import 'package:flutter/material.dart';

// screens
import 'package:misstea/screens/home.dart';
import 'package:misstea/screens/search.dart';
import 'package:misstea/screens/notification.dart';
import 'package:misstea/screens/setting.dart';

// extensions
import 'package:misstea/extensions/color_schemes.g.dart';
import 'package:misstea/extensions/snackbar.dart';

// etc
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'misstea',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const AppTopWidget(),
    );
  }
}

class AppTopWidget extends StatefulWidget {
  const AppTopWidget({Key? key}) : super(key: key);

  @override
  State<AppTopWidget> createState() => _StatefulWidgetState();
}

class _StatefulWidgetState extends State<AppTopWidget> {
  @override
  void initState() {
    super.initState();
  }

  static final _screens = [
    HomeScreen(),
    SearchScreen(),
    NotificationScreen(),
    SettingScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {});

    return Scaffold(
        body: _screens[_selectedIndex],
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text("ノート"),
            icon: const Icon(Icons.add)),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          onTap: _onItemTapped,
          items: [
            SalomonBottomBarItem(
                icon: const Icon(Icons.cottage_outlined),
                title: const Text('ホーム')),
            SalomonBottomBarItem(
                icon: const Icon(Icons.pending_actions_outlined),
                title: const Text('検索')),
            SalomonBottomBarItem(
                icon: const Icon(Icons.face_4_outlined),
                title: const Text('通知')),
            SalomonBottomBarItem(
                icon: const Icon(Icons.settings), title: const Text('設定')),
          ],
        ));
  }
}
