import 'package:flutter/material.dart';

class ChatScreenTitle extends StatelessWidget {
  const ChatScreenTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontFamily: 'SignikaNegative'),
    );
  }
}
