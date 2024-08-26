import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class BonusRowContainer extends StatelessWidget {
  const BonusRowContainer(
      {super.key,
      required this.bonus,
      required this.price,
      required this.coins,
      this.istrue = true,
      this.onTap});
  final void Function()? onTap;
  final String bonus;
  final int coins;
  final int price;
  final bool istrue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
        width: double.infinity,
        height: 95,
        decoration: BoxDecoration(
            image: istrue
                ? const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://img.pikbest.com/wp/202346/purple-minimalist-illustration-style-cartoon-of-coins-flowing-into-a-safe-box-with-the-concept-finance-savings-cost-reduction-and-earnings-on-background-banner_9619194.jpg!bw700'))
                : null,
            color: const Color(0xff272a31),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        '$bonus% Bonus',
                        style: const TextStyle(
                            fontFamily: appfonts,
                            fontSize: 15,
                            color: Colors.black),
                      )),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    istrue
                        ? Container(
                            height: 20,
                            width: 130,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                                child: Text(
                              '11h: 43m: 09s',
                              style: TextStyle(
                                  fontFamily: appfonts,
                                  fontSize: 15,
                                  color: Colors.black),
                            )),
                          )
                        : const SizedBox(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      '🪙 $coins Coins + ',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: appfonts,
                      ),
                    ),
                    Text(
                      '$coins Coins Free ',
                      style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: appfonts,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.currency_rupee_sharp,
                  color: ColorConstant.whiteColor,
                ),
                const SizedBox(
                  width: 2,
                ),
                Text('$price',
                    style: const TextStyle(
                        color: ColorConstant.whiteColor,
                        fontSize: 20,
                        fontFamily: appfonts)),
                const SizedBox(
                  width: 2,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: ColorConstant.whiteColor,
                  size: 18,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
