import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Смена контента',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeContent(),
    ProfileContent(),
    SettingsContent(),
    NotificationsContent(),
    HelpContent(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Приложение для смены контента'),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Уведомления',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Помощь',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Это главный экран',
      style: TextStyle(fontSize: 24),
    );
  }
}

class ProfileContent extends StatelessWidget {
  const ProfileContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Это экран профиля',
      style: TextStyle(fontSize: 24),
    );
  }
}

class SettingsContent extends StatelessWidget {
  const SettingsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Это экран настроек',
      style: TextStyle(fontSize: 24),
    );
  }
}

class NotificationsContent extends StatelessWidget {
  const NotificationsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Это экран уведомлений',
      style: TextStyle(fontSize: 24),
    );
  }
}

class HelpContent extends StatelessWidget {
  const HelpContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Это экран помощи',
      style: TextStyle(fontSize: 24),
    );
  }
}
