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
          iconSize: 26,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          unselectedItemColor: const Color(0xff7c7d80),
          selectedItemColor: const Color(0xffffffff),
          backgroundColor: const Color(0xff1a1b1f),
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle:
              const TextStyle(fontSize: 13, fontFamily: appfonts),
          selectedLabelStyle:
              const TextStyle(fontSize: 13, fontFamily: appfonts),
          items: const [
            BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage(
                    'assets/icons/home (1).png',
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: ImageIcon(AssetImage(
                    'assets/icons/home.png',
                  )),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage(
                    'assets/icons/comment (1).png',
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: ImageIcon(AssetImage(
                    'assets/icons/comment.png',
                  )),
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage(
                    'assets/icons/bag (1).png',
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: ImageIcon(AssetImage(
                    'assets/icons/bag.png',
                  )),
                ),
                label: 'Store'),
            BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage(
                    'assets/icons/search.png',
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: ImageIcon(AssetImage(
                    'assets/icons/search-interface-symbol.png',
                  )),
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage(
                    'assets/icons/user (1).png',
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: ImageIcon(AssetImage(
                    'assets/icons/person.png',
                  )),
                ),
                label: 'My Space'),
          ]),
    );
  }
}
