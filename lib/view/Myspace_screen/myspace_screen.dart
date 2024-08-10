import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/Global_widgets/Disc_card/disc_card.dart';

class MySpaceScreen extends StatelessWidget {
  const MySpaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainTheamColor,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Recent Play Titile
            const Row(
              children: [
                Icon(
                  Icons.play_circle_outline,
                  size: 25,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Recently Played (1)',
                  style: TextStyle(
                    color: ColorConstant.whiteColor,
                    fontFamily: appfonts,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            //Recent Played
            const RecentDiscCard(),

            const SizedBox(
              height: 20,
            ),

            //history

            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstant.grayLightColor),
              child: const Row(
                children: [
                  Icon(
                    Icons.replay_circle_filled_rounded,
                    color: ColorConstant.whiteColor,
                    size: 25,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
