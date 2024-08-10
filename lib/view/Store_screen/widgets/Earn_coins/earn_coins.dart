import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/Store_screen/widgets/Earn_coin_get_coin_row_container/get_coin_row_container.dart';

class EarnCoins extends StatelessWidget {
  const EarnCoins({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //Total Free Coins
            _totalEarnedRowContainer(),

            const SizedBox(
              height: 18,
            ),

            //Daily App Open

            _dailyCheckIndicator(context),

            const SizedBox(
              height: 18,
            ),

            //invite friends
            _buildInviteFriendCard(),

            const SizedBox(
              height: 20,
            ),

            //coinsfromuserprofile

            const GetCoinRowContainer(
              icon: Icons.person,
              text1: 'Get',
              coins: 20,
              text2: 'coins on conpleting your user profile',
            ),

            const SizedBox(
              height: 18,
            ),

            //coinsfrondailylistening
            const GetCoinRowContainer(
              istrue: false,
              icon: Icons.calendar_today_outlined,
              text1: 'Get',
              coins: 20,
              text2: 'coins on setting a reminder for daily listening',
            ),

            const SizedBox(
              height: 18,
            ),

            //coinsfronplaystore

            const GetCoinRowContainer(
              istrue: false,
              icon: Icons.download_done_rounded,
              text1: 'Get',
              coins: 20,
              text2: 'coins on rating us on Playstore',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInviteFriendCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 125,
      width: double.infinity,
      decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://img.pikbest.com/ai/illus_our/20230427/4dc872e2594f4ec82b742b674beadebe.jpg!w700wp')),
          borderRadius: BorderRadius.circular(18),
          color: ColorConstant.grayLightColor),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Invite Your friends & Earn \nunlimited',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: appfonts,
            ),
          ),
          Spacer(),
          Text(
            'Invite Your friends & Start earning \nnow',
            style: TextStyle(
                color: Colors.white60,
                fontSize: 12,
                fontFamily: appfonts,
                overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }

  Widget _dailyCheckIndicator(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff272a31),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(' Daily App Open',
              style: TextStyle(
                fontFamily: appfonts,
                fontSize: 20,
                color: Colors.white,
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 120,
            // color: Colors.amber.withOpacity(.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 120,
                      // color: Colors.blue.withOpacity(.4),
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                        value: .7,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '+10🪙',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                                fontFamily: appfonts,
                              ),
                            ),
                            CircleAvatar(
                              radius: 26,
                              child: Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              'Day 1',
                              style: TextStyle(
                                color: ColorConstant.whiteColor,
                                fontSize: 18,
                                fontFamily: appfonts,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              '+30🪙',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                                fontFamily: appfonts,
                              ),
                            ),
                            CircleAvatar(
                              radius: 24,
                              child: Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              'Day 7',
                              style: TextStyle(
                                color: ColorConstant.whiteColor,
                                fontSize: 18,
                                fontFamily: appfonts,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              '+40🪙',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                                fontFamily: appfonts,
                              ),
                            ),
                            CircleAvatar(
                              radius: 26,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Day 14',
                              style: TextStyle(
                                color: ColorConstant.whiteColor,
                                fontSize: 18,
                                fontFamily: appfonts,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _totalEarnedRowContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff272a31),
        border: Border.all(width: 2, color: const Color(0xff464b55)),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ' Total Free Coins Earned',
            style: TextStyle(
              fontFamily: appfonts,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Text(
                '🪙',
                style: TextStyle(fontSize: 18, fontFamily: appfonts),
              ),
              SizedBox(
                width: 2,
              ),
              Text('180',
                  style: TextStyle(
                      color: ColorConstant.whiteColor,
                      fontSize: 20,
                      fontFamily: appfonts)),
              SizedBox(
                width: 2,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorConstant.whiteColor,
                size: 18,
              )
            ],
          )
        ],
      ),
    );
  }
}
