import 'package:flutter/material.dart';

import 'package:kuku_fm_clone/view/Home_screen/widgets/carouse_slider.dart';
import 'package:kuku_fm_clone/view/Home_screen/widgets/custom_appbar_.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a1b1f),
      body: SafeArea(
        child: Column(
          children: [
            //AppBar
            CustomAppBar(),

            SizedBox(
              height: 25,
            ),

            //CarouseSlider
            CarouseSlider(),

            //titile
          ],
        ),
      ),
    );
  }
}
