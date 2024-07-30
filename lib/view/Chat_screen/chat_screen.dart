import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/view/Chat_screen/wigets/chat_screen_title.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.mainTheamColor,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 18),
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
                maxHeight: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 250,
                      height: 100,
                      decoration: const BoxDecoration(color: Colors.amber),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
