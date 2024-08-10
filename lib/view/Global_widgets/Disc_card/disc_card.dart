import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class RecentDiscCard extends StatelessWidget {
  const RecentDiscCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber.withOpacity(.4),
      height: 160,
      width: 205,
      child: Stack(
        children: [
          Positioned(
            right: 40,
            top: 10,
            child: Container(
              height: 105,
              width: 105,
              decoration: const BoxDecoration(
                // color: Colors.red.withOpacity(.4),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.cdn.kukufm.com/w:384/f:webp/q:75/https://images.cdn.kukufm.com/f:webp/https://s3.ap-south-1.amazonaws.com/kukufm/channel_icons/d144a44c30f744fbb80d961e0181f67f_landscape_994.png')),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(.6)),
                  child: Center(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 125,
            width: 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.cdn.kukufm.com/w:384/f:webp/q:75/https://images.cdn.kukufm.com/f:webp/https://s3.ap-south-1.amazonaws.com/kukufm/channel_icons/d144a44c30f744fbb80d961e0181f67f_landscape_994.png'),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 45,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black54,
                  ),
                  child: const Center(
                      child: Icon(color: Colors.white, Icons.play_arrow)),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Episode 1/97',
                  style: TextStyle(
                      fontFamily: appfonts,
                      fontSize: 18,
                      color: Color(0xff595a5c)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
