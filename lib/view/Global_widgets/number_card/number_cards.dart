import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberCards extends StatelessWidget {
  const NumberCards({super.key, required this.index, required this.img});
  final int index;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 140,
              width: 40,
            ),
            Stack(
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
                Container(
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
                      color: Color(0xff9e6220),
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -23,
          child: BorderedText(
            strokeJoin: StrokeJoin.round,
            strokeColor: const Color(0xff84838b),
            strokeWidth: 5,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xff1a1b1f),
                  fontSize: 100),
            ),
          ),
        )
      ],
    );
  }
}
