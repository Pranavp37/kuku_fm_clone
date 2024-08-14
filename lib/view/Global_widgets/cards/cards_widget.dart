import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class CardsWidget extends StatelessWidget {
  const CardsWidget(
      {super.key, required this.img, this.vipBanner = true, this.onTap});
  final String img;
  final bool vipBanner;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(img)),
                  borderRadius: BorderRadius.circular(20)),
            ),
            vipBanner
                ? Container(
                    height: 22,
                    width: 40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(5.0)),
                      color: Color(0xfffde689),
                    ),
                    child: const Center(
                        child: Text(
                      'VIP',
                      style: TextStyle(
                        fontFamily: appfonts,
                        color: Color(0xff9e6220),
                        fontSize: 16.0,
                      ),
                    )),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
