import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Text("home"),
    const Text("Search"),
    const Text("Clothes"),
    const Text("Profile")
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
        title: const Text("My clothes"),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.home_16_regular),
                activeIcon: Icon(FluentIcons.home_16_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.search_16_regular),
                activeIcon: Icon(FluentIcons.search_16_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.accessibility_16_regular),
                activeIcon: Icon(FluentIcons.accessibility_16_filled),
                label: "Clothes"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.person_16_regular),
                activeIcon: Icon(FluentIcons.person_16_filled),
                label: "Profile"),
          ]),
    );
  }
}
