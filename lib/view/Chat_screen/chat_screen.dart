import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/dummydb.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/view/Chat_screen/wigets/Chat_profile_Widget/chat_profile.dart';
import 'package:kuku_fm_clone/view/Chat_screen/wigets/chat_ti/chat_screen_title.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.mainTheamColor,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                const ChatScreenTitle(
                  title: 'Forbidden Fruit',
                ),

                const SizedBox(
                  height: 15,
                ),

                //card
                LimitedBox(
                  maxHeight: 145,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        Dummydb.chatprofile.length,
                        (index) => ChatProfile(index: index),
                      )),
                ),

                const SizedBox(
                  height: 15,
                ),

                //Recent Chats title
                const ChatScreenTitle(
                  title: 'Recent Chats',
                ),

                const SizedBox(
                  height: 15,
                ),

                //recentChatcards
                LimitedBox(
                  maxHeight: 145,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        1,
                        (index) => const ChatProfile(index: 2),
                      )),
                ),

                const SizedBox(
                  height: 15,
                ),

                //Temptation Alley title
                const ChatScreenTitle(
                  title: 'Temptation Alley',
                ),

                const SizedBox(
                  height: 15,
                ),

                //card
                LimitedBox(
                  maxHeight: 145,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        5,
                        (index) => ChatProfile(index: index + 3),
                      )),
                ),

                const SizedBox(
                  height: 15,
                ),

                //# Latest title
                const ChatScreenTitle(
                  title: '#Latest',
                ),

                const SizedBox(
                  height: 15,
                ),

                //card
                LimitedBox(
                  maxHeight: 145,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        5,
                        (index) => ChatProfile(
                          index: index,
                          imagechage: false,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
