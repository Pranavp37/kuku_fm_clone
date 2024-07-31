import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class MainTitleWiget extends StatelessWidget {
  const MainTitleWiget({
    super.key,
    required this.titile,
  });

  final String titile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titile,
            style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: appfonts,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                size: 18,
                Icons.arrow_forward_ios,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
