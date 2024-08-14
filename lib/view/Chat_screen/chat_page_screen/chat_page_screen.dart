import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class ChatPageScreen extends StatelessWidget {
  const ChatPageScreen({
    super.key,
    required this.chatuserimag,
    required this.chatusername,
  });
  final String chatuserimag;
  final String chatusername;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainTheamColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(chatuserimag))),
          child: ListView(
            children: [
              //appBar
              Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                height: 80,
                color: Colors.black,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.keyboard_arrow_left_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 23,
                      backgroundImage: NetworkImage(chatuserimag),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chatusername,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: appfonts),
                        ),
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Online',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: appfonts),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.more_vert,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              //
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 40),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                            color: ColorConstant.secondaryGrayColor
                                .withOpacity(.8),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Hey ! ,Whats's your name,i'm $chatusername",
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: appfonts,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        color: Colors.black,
        height: 90,
        child: TextFormField(
          decoration: const InputDecoration(
              suffixIcon: Icon(
                Icons.send,
                color: Colors.white,
              ),
              hintText: 'Write Somthing...',
              hintStyle: TextStyle(
                  color: Colors.white, fontSize: 16, fontFamily: appfonts),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1))),
        ),
      ),
    );
  }
}
