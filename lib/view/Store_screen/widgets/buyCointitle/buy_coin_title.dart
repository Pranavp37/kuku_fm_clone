import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class BuyCoinTitle extends StatelessWidget {
  const BuyCoinTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: appfonts,
      ),
    );
  }
}
