import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/dummydb.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/payment_details_screen/widget/payment_type_title/payment_type_title.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key, required this.coin, required this.rupees});
  final int coin;
  final int rupees;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainTheamColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.mainTheamColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Pay Securely',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontFamily: appfonts),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstant.grayLightColor),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$coin Coins',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: appfonts),
                      ),
                      Text(
                        '+$coin Free Coins',
                        style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 13,
                            fontFamily: appfonts),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    '₹ $rupees',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: appfonts),
                  ),
                ],
              ),
            ),
          ),

          //upi heading

          const PaymentTypeTitle(
            paymentTypeIcon: Icons.paypal_outlined,
            title: 'UPi',
          ),

          //

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage:
                          AssetImage('assets/images/google-pay.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'GPay',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: appfonts),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage:
                          AssetImage('assets/images/upi-twitter.jpg'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Add UPI Id',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: appfonts),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Net Banking

          const PaymentTypeTitle(
              paymentTypeIcon: Icons.payment, title: 'Net Banking'),

          //
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                Dummydb.netBanking.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                            Dummydb.netBanking[index]['bankimage'].toString()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: Text(
                          maxLines: 2,
                          Dummydb.netBanking[index]['bankname'].toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: appfonts,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          //
          const PaymentTypeTitle(
            paymentTypeIcon: Icons.card_membership_outlined,
            title: 'Cards(Credit?Debit)',
            arrowicon: true,
          ),

          //
          const PaymentTypeTitle(
            paymentTypeIcon: Icons.wallet,
            title: 'wallet',
          ),

          //
          //
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                Dummydb.onlinePay.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                            Dummydb.onlinePay[index]['bankimage'].toString()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: Text(
                          maxLines: 2,
                          Dummydb.onlinePay[index]['bankname'].toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: appfonts,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          //
          const PaymentTypeTitle(
            paymentTypeIcon: Icons.play_arrow,
            title: 'Google Play Store',
          ),
        ],
      ),
    );
  }
}
