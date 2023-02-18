import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:my_outfits/screens/home_screen.dart';
import 'package:my_outfits/screens/search_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const Text("Outfits"),
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
                label: "Outfits"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.person_16_regular),
                activeIcon: Icon(FluentIcons.person_16_filled),
                label: "Profile"),
          ]),
    );
  }
}
