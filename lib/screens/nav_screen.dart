import 'package:flutter/material.dart';

import './screens.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final Map<String, IconData> icons = {
    'Home': Icons.home,
    'Search': Icons.search,
    'Comming Soon': Icons.queue_play_next,
    'Downloads': Icons.file_download,
    'More': Icons.menu,
  };

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: screens.length,
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: icons
              .map((key, value) => MapEntry(
                  key, BottomNavigationBarItem(icon: Icon(value), label: key)))
              .values
              .toList(),
          currentIndex: currentIndex,
          selectedItemColor: Colors.white,
          selectedFontSize: 11.0,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 11.0,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
