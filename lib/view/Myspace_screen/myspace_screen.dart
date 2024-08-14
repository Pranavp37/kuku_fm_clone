import 'package:flutter/material.dart';

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

            _buildHistoryRowContainer(),

            const SizedBox(
              height: 20,
            ),

            //Listen Offline!

            Container(
              padding: const EdgeInsets.all(16),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstant.grayLightColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Listen Offline!',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontFamily: appfonts,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'No internet? No problem.',
                            style: TextStyle(
                              color: ColorConstant.whiteColor,
                              fontFamily: appfonts,
                            ),
                          ),
                          Text(
                            'Download and enjoy on the go.',
                            style: TextStyle(
                              color: ColorConstant.whiteColor,
                              fontFamily: appfonts,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                            color: ColorConstant.whiteColor,
                            borderRadius: BorderRadius.circular(25)),
                        child: const Row(
                          children: [
                            Text(
                              'Download Now',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: appfonts),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  // Image.network('')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryRowContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorConstant.grayLightColor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.replay_outlined,
            color: ColorConstant.whiteColor,
            size: 28,
          ),
          const SizedBox(
            width: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'History',
                  style: TextStyle(
                      color: ColorConstant.whiteColor,
                      fontFamily: appfonts,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Check show listening history',
                  style: TextStyle(
                      color: ColorConstant.secondaryGrayColor,
                      fontFamily: appfonts,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                size: 20,
                Icons.arrow_forward_ios_outlined,
                color: ColorConstant.whiteColor,
              ))
        ],
      ),
    );
  }
}
