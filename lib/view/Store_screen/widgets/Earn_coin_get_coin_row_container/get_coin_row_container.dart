import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class GetCoinRowContainer extends StatelessWidget {
  const GetCoinRowContainer(
      {super.key,
      required this.text1,
      required this.coins,
      required this.text2,
      required this.icon,
      this.istrue = true});
  final String text1;
  final int coins;
  final String text2;
  final IconData icon;
  final bool istrue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorConstant.grayLightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: ColorConstant.whiteColor,
            size: 54,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: RichText(
                text: TextSpan(
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.white,
                fontSize: 16,
                fontFamily: appfonts,
              ),
              children: [
                TextSpan(text: text1),
                TextSpan(
                    text: ' $coins🪙 ',
                    style: const TextStyle(color: Colors.orange, fontSize: 18)),
                TextSpan(text: text2)
              ],
            )),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                istrue ? Icons.check_circle_rounded : Icons.arrow_forward_ios,
                color: istrue ? Colors.green : Colors.white,
              ))
        ],
      ),
    );
  }
}
