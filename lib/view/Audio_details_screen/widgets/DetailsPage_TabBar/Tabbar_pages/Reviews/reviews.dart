import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            children: [
              Column(
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: '4.8',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: appfonts)),
                    TextSpan(
                        text: ' / 5.0',
                        style: TextStyle(
                            color: ColorConstant.secondaryGrayColor,
                            fontSize: 18,
                            fontFamily: appfonts))
                  ])),
                  Text(
                    '(581 Reviews)',
                    style: TextStyle(color: ColorConstant.secondaryGrayColor),
                  )
                ],
              ),
              Spacer(),
              Text(
                '⭐⭐⭐⭐⭐',
                style: TextStyle(fontFamily: appfonts, fontSize: 26),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),

          //Your Rated

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration:
                const BoxDecoration(color: ColorConstant.grayLightColor),
            child: const Row(
              children: [
                Text(
                  'You Rated',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: appfonts,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.grade_outlined,
                      color: ColorConstant.secondaryGrayColor,
                      size: 40,
                    ),
                    Icon(
                      Icons.grade_outlined,
                      color: ColorConstant.secondaryGrayColor,
                      size: 40,
                    ),
                    Icon(
                      Icons.grade_outlined,
                      color: ColorConstant.secondaryGrayColor,
                      size: 40,
                    ),
                    Icon(
                      Icons.grade_outlined,
                      color: ColorConstant.secondaryGrayColor,
                      size: 40,
                    ),
                    Icon(
                      Icons.grade_outlined,
                      color: ColorConstant.secondaryGrayColor,
                      size: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //

          const Row(
            children: [
              Text(
                'Reviews',
                style: TextStyle(
                    color: Colors.white, fontFamily: appfonts, fontSize: 18),
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
              )
            ],
          ),

          //reviews
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 18,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFayTsGvn4IAglGZXT8PhW9F9rR2MZhkNz5ohbl4lkmUSef_nqizd7hDfuHpre8qzQljw&usqp=CAU'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Yuonne Wright',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.play_arrow,
                                    size: 28,
                                    color: ColorConstant.secondaryGrayColor,
                                  ),
                                  Text(
                                    '53 playes',
                                    style: TextStyle(
                                        color: ColorConstant.secondaryGrayColor,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 28,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            child: const Center(
                              child: Text(
                                'Follow',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Icon(
                            Icons.more_vert,
                            size: 28,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            '⭐⭐⭐⭐⭐',
                            style:
                                TextStyle(fontFamily: appfonts, fontSize: 15),
                          ),
                          Spacer(),
                          Text(
                            'jun 28,2024',
                            style: TextStyle(
                                color: ColorConstant.secondaryGrayColor,
                                fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Text(
                        'beutiful novel .Great Story',
                        style: TextStyle(
                            color: ColorConstant.whiteColor, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.favorite_border_rounded,
                            size: 28,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Upvotes (4)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 3)
        ],
      ),
    );
  }
}
