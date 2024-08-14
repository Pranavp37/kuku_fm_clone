import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/view/Audio_details_screen/audio_details.dart';
import 'package:kuku_fm_clone/view/Botton_nav_bar/botton_nav_bar.dart';
import 'package:kuku_fm_clone/view/Home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AudioDetails(),
    );
  }
}
