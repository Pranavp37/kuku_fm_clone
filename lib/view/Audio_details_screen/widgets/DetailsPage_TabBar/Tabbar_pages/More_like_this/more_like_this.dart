import 'dart:math';

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';

import 'package:kuku_fm_clone/utils/font_const.dart';

class MoreLikeThis extends StatelessWidget {
  const MoreLikeThis({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Recommended For You',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: appfonts,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.red, fontFamily: appfonts, fontSize: 16),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                    size: 17,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                            height: 120,
                            width: 125,
                            fit: BoxFit.cover,
                            'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/09/encanto-header.jpg'),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Whispers on the Airwaves',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            '5.0(2.6k+listens).02 hr 3 mint',
                            style: TextStyle(
                                color: ColorConstant.secondaryGrayColor,
                                fontSize: 15),
                          ),
                          // Text(
                          //   maxLines: 3,
                          //   overflow: TextOverflow.ellipsis,
                          //   'Dive into the extraordinary life of Jacob Ye,',
                          //   style: TextStyle(
                          //       fontSize: 12, color: ColorConstant.whiteColor),
                          // )
                        ],
                      )
                    ],
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 25,
                  ),
              itemCount: 5)
        ],
      ),
    );
  }
}
