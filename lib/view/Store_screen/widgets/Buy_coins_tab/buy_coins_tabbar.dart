import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/Store_screen/widgets/Bonus_Row_container/bonus_row_container.dart';
import 'package:kuku_fm_clone/view/Store_screen/widgets/buyCointitle/buy_coin_title.dart';

class BuyCoinsTabbar extends StatelessWidget {
  const BuyCoinsTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //WalletBalance
            checkBalanceBox(),

            const SizedBox(
              height: 25,
            ),

            //title
            const BuyCoinTitle(title: 'One Time Offer'),

            const SizedBox(
              height: 20,
            ),

            //one Time Offer Row Card

            const BonusRowContainer(
              coins: 200,
              bonus: '250',
              price: 99,
            ),

            const SizedBox(
              height: 20,
            ),

            const BonusRowContainer(
              coins: 200,
              bonus: '260',
              price: 99,
              istrue: false,
            ),

            const SizedBox(
              height: 20,
            ),

            //title
            const BuyCoinTitle(title: 'Trial Pack'),

            const SizedBox(
              height: 20,
            ),

            const BonusRowContainer(
              coins: 20,
              bonus: '100',
              price: 9,
              istrue: false,
            ),

            const SizedBox(
              height: 20,
            ),

            //title
            const BuyCoinTitle(title: 'Most Bought'),

            const SizedBox(
              height: 20,
            ),

            const BonusRowContainer(
              coins: 40,
              bonus: '100',
              price: 19,
              istrue: false,
            ),

            const SizedBox(
              height: 20,
            ),

            const BonusRowContainer(
              coins: 80,
              bonus: '112',
              price: 39,
              istrue: false,
            ),

            const SizedBox(
              height: 20,
            ),

            //title
            const BuyCoinTitle(title: 'Best Value'),

            const SizedBox(
              height: 20,
            ),

            const BonusRowContainer(
              coins: 400,
              bonus: '150',
              price: 199,
              istrue: false,
            ),

            const SizedBox(
              height: 20,
            ),

            const BonusRowContainer(
              coins: 800,
              bonus: '200',
              price: 399,
              istrue: false,
            ),
          ],
        ),
      ),
    );
  }

  Container checkBalanceBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: const Color(0xff464b55)),
          color: const Color(0xff272a31),
          borderRadius: BorderRadius.circular(15)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wallet Balance',
                style: TextStyle(
                  fontSize: 16,
                  color: ColorConstant.whiteColor,
                  fontFamily: appfonts,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Icon(
                    Icons.help_outline,
                    color: Color(0xff88898d),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'How it Works?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff88898d),
                      fontFamily: appfonts,
                    ),
                  )
                ],
              )
            ],
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
              Text('123',
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
