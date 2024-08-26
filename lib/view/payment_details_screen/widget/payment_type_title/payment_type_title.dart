import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class PaymentTypeTitle extends StatelessWidget {
  const PaymentTypeTitle(
      {super.key,
      required this.paymentTypeIcon,
      required this.title,
      this.arrowicon = false});
  final IconData paymentTypeIcon;
  final String title;
  final bool arrowicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      height: 60,
      width: double.infinity,
      color: ColorConstant.grayLightColor,
      child: Row(
        children: [
          Icon(
            paymentTypeIcon,
            color: ColorConstant.whiteColor,
            size: 35,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: appfonts,
            ),
          ),
          const Spacer(),
          arrowicon
              ? const Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  color: ColorConstant.whiteColor,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
