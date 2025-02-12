import 'package:flutter/material.dart';
import 'package:mov/home/tabs/explore%20tab.dart';
import 'package:mov/home/tabs/home%20tab.dart';
import 'package:mov/home/tabs/profile%20tab.dart';
import 'package:mov/home/tabs/search%20tab.dart';
import 'package:mov/theme/theme.dart';
class homescreen extends StatefulWidget {
  static const String routeName = "homescreen";
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}
class _homescreenState extends State<homescreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    home_tab(),
    search_tab(),
    explore_tab(),
    profile_tab()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: MyTheme.gold,
              unselectedItemColor: MyTheme.gray,
              backgroundColor: MyTheme.blackOne,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home_filled),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.explore),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          body: tabs[selectedIndex],
        ));
  }
}
