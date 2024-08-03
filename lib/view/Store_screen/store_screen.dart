import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/Store_screen/widgets/Buy_coins_tab/buy_coins_tabbar.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  int tabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: ColorConstant.mainTheamColor,
        appBar: AppBar(
          backgroundColor: ColorConstant.mainTheamColor,
          centerTitle: true,
          title: const Text(
            'Store',
            style: TextStyle(
              fontSize: 25,
              color: ColorConstant.whiteColor,
              fontFamily: appfonts,
            ),
          ),
          bottom: const TabBar(
              unselectedLabelColor: Color(0xff868c97),
              indicatorColor: ColorConstant.whiteColor,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerHeight: 0,
              labelStyle: TextStyle(
                fontSize: 18,
                color: ColorConstant.whiteColor,
                fontFamily: appfonts,
              ),
              tabs: [
                Tab(
                  text: 'Buy Coins',
                ),
                Tab(
                  text: 'Earn Coins',
                ),
              ]),
        ),
        body: const TabBarView(children: [
          BuyCoinsTabbar(),
          Text(
            'Store',
            style: TextStyle(
              fontSize: 25,
              color: ColorConstant.whiteColor,
              fontFamily: appfonts,
            ),
          ),
        ]),
      ),
    );
  }
}
