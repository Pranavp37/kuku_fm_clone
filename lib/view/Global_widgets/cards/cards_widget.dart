import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  const CardsWidget({super.key, required this.img});
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
