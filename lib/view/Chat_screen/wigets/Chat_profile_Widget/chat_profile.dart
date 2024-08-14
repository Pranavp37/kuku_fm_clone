import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/dummydb.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class ChatProfile extends StatelessWidget {
  const ChatProfile({super.key, required this.index, this.imagechage = true, this.onTap});
  final int index;
  final bool? imagechage;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          padding: const EdgeInsets.all(18),
          width: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xff28292e)),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      fit: BoxFit.cover,
                      imagechage == true
                          ? Dummydb.chatprofile[index]['imageUrl']
                          : Dummydb.chatprofile2[index]['imageUrl']),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      imagechage == true
                          ? Dummydb.chatprofile[index]['name']
                          : Dummydb.chatprofile2[index]['name'],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: appfonts),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      imagechage == true
                          ? Dummydb.chatprofile[index]['message']
                          : Dummydb.chatprofile2[index]['message'],
                      style: const TextStyle(color: Color(0xff868c97)),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.mark_chat_unread_outlined,
                          color: Color(0xff868c97),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          imagechage == true
                              ? Dummydb.chatprofile[index]['like']
                              : Dummydb.chatprofile2[index]['like'],
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color(0xff868c97),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
