import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/Chat_screen/chat_screen.dart';
import 'package:kuku_fm_clone/view/Home_screen/home_screen.dart';
import 'package:kuku_fm_clone/view/Myspace_screen/myspace_screen.dart';
import 'package:kuku_fm_clone/view/Search_screen/search_screen.dart';
import 'package:kuku_fm_clone/view/Store_screen/store_screen.dart';

class BottonNavBar extends StatefulWidget {
  const BottonNavBar({super.key});

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {
  int currentTapIndex = 0;
  static const List _screens = [
    HomeScreen(),
    ChatScreen(),
    StoreScreen(),
    SearchScreen(),
    MySpaceScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentTapIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentTapIndex = index;
            });
          },
          currentIndex: currentTapIndex,
          iconSize: 30,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          unselectedItemColor: const Color(0xff7c7d80),
          selectedItemColor: const Color(0xffffffff),
          backgroundColor: const Color(0xff1a1b1f),
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle:
              const TextStyle(fontSize: 14, fontFamily: appfonts),
          selectedLabelStyle:
              const TextStyle(fontSize: 14, fontFamily: appfonts),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Store'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'My Space'),
          ]),
    );
  }
}
