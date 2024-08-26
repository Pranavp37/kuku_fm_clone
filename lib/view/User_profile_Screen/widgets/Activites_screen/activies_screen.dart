import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/dummydb.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/Global_widgets/cards/cards_widget.dart';

class ActiviesScreen extends StatelessWidget {
  const ActiviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Newly added in your friends library',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontFamily: appfonts),
          ),
          const Text(
            'By your favourite creators',
            style: TextStyle(
                color: ColorConstant.secondaryGrayColor,
                fontSize: 15,
                fontFamily: appfonts),
          ),
          const SizedBox(
            height: 25,
          ),
          CardsWidget(
              vipBanner: false, img: Dummydb.top10[6]['imgurl'].toString()),
          const Row(
            children: [
              Icon(
                Icons.play_arrow,
                color: Colors.red,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '1.4 M',
                style: TextStyle(
                    color: Colors.red, fontFamily: appfonts, fontSize: 16),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'listens',
                style: TextStyle(
                    color: ColorConstant.secondaryGrayColor,
                    fontFamily: appfonts,
                    fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
