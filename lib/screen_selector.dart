import 'package:cookbook_app/categories.dart';
import 'package:cookbook_app/favorites_screen.dart';
import 'package:cookbook_app/main_drawer.dart';
import 'package:flutter/material.dart';

class ScreenNavigation extends StatefulWidget {
  @override
  _ScreenNavigationState createState() => _ScreenNavigationState();
}

class _ScreenNavigationState extends State<ScreenNavigation> {
  final List<Map<String, Object>> _screens = [
    {
      'screen': Categories(),
      'title': 'Cookbook',
    },
    {
      'screen': Favorites(),
      'title': 'Favorites',
    },
  ];

  int _currentScreen = 0;

  void changeScreen(int index) {
    setState(() {
      _currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_currentScreen]['title']),
      ),
      drawer: MainDrawer(),
      body: _screens[_currentScreen]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _currentScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_very_satisfied),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
