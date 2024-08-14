import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';

class ReviewRowContainer extends StatelessWidget {
  const ReviewRowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              fit: BoxFit.contain,
              height: 25,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFayTsGvn4IAglGZXT8PhW9F9rR2MZhkNz5ohbl4lkmUSef_nqizd7hDfuHpre8qzQljw&usqp=CAU',
            ),
          ),
          const Text(
            '" beautiful novel. Greate story. "',
            style: TextStyle(
                color: ColorConstant.whiteColor,
                fontSize: 16,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            width: 3,
          ),
          const Text(
            '⭐ 5/5 ',
            style: TextStyle(
              color: ColorConstant.whiteColor,
              fontSize: 16,
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 20,
            color: ColorConstant.whiteColor,
          )
        ],
      ),
    );
  }
}
