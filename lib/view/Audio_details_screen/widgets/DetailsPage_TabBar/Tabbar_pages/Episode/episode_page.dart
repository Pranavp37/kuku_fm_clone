import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class EpisodePage extends StatelessWidget {
  const EpisodePage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10),
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white54, width: 2)),
          child: const Row(
            children: [
              Text(
                '1-20',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                    thickness: 0.1,
                    color: Colors.grey,
                  ),
              itemCount: 10,
              itemBuilder: (context, index) => Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                            height: 80, width: 90, fit: BoxFit.cover, image),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${index + 1}.She's All Yours",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: appfonts),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '7 min ${index + 30} sec',
                              style: const TextStyle(
                                  color: ColorConstant.secondaryGrayColor,
                                  fontSize: 15,
                                  fontFamily: appfonts),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.download_rounded,
                        color: Colors.white,
                      ),
                    ],
                  )),
        )
      ],
    );
  }
}
