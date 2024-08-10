import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainTheamColor,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //buildSearchFormfield
            _buildSearchFormField(),

            const SizedBox(
              height: 20,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Top Searches',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: appfonts,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ColorConstant.grayLightColor),
                            child: const Center(
                                child: Text(
                              'Doctor Miracle,MD',
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: appfonts),
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ColorConstant.grayLightColor),
                            child: const Center(
                                child: Text(
                              "Dragon's Shadow -The Book of Dragons",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: appfonts),
                            )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ColorConstant.grayLightColor),
                            child: const Center(
                                child: Text(
                              "Luke's Redemption",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: appfonts),
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ColorConstant.grayLightColor),
                            child: const Center(
                                child: Text(
                              "A love Like Fire",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: appfonts),
                            )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: .4,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSearchFormField() {
    return TextFormField(
      decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          fillColor: ColorConstant.grayLightColor,
          filled: true,
          border: InputBorder.none,
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          hintText: 'Search On Kuku FM',
          hintStyle: const TextStyle(color: Colors.white60),
          suffixIcon: const Icon(
            Icons.mic,
            color: Colors.white60,
            size: 28,
          )),
    );
  }
}
