import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';

class ViewsRateReviews extends StatelessWidget {
  const ViewsRateReviews({super.key, required this.like});
  final String like;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '▶ ${like}k',
                style: const TextStyle(
                  color: ColorConstant.whiteColor,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Listens',
                style: TextStyle(
                    color: ColorConstant.secondaryGrayColor, fontSize: 16),
              )
            ],
          ),
          //
          const SizedBox(
            width: 10,
          ),
          //

          const SizedBox(
            height: 50,
            child: VerticalDivider(
              width: 10,
              thickness: 1,
              color: Colors.white,
            ),
          ),

          //
          const SizedBox(
            width: 10,
          ),
          //

          //
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'U/A 18+',
                style: TextStyle(
                  color: ColorConstant.whiteColor,
                  fontSize: 20,
                ),
              ),
              Text(
                'Rated',
                style: TextStyle(
                    color: ColorConstant.secondaryGrayColor, fontSize: 16),
              )
            ],
          ),

          //
          const SizedBox(
            width: 10,
          ),
          //

          const SizedBox(
            height: 50,
            child: VerticalDivider(
              width: 10,
              thickness: 1,
              color: Colors.white,
            ),
          ),

          //
          const SizedBox(
            width: 10,
          ),
          //

          //
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.auto_graph,
                color: Colors.amber,
                size: 30,
              ),
              Text(
                'Ongoing',
                style: TextStyle(color: Colors.amber, fontSize: 16),
              )
            ],
          ),

          //
          const SizedBox(
            width: 10,
          ),
          //

          const SizedBox(
            height: 50,
            child: VerticalDivider(
              width: 10,
              thickness: 1,
              color: Colors.white,
            ),
          ),

          //
          const SizedBox(
            width: 10,
          ),
          //

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 22,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '4.9 ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.grade,
                        size: 20,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                '82 Reviews',
                style: TextStyle(
                    color: ColorConstant.secondaryGrayColor, fontSize: 16),
              )
            ],
          ),
        ],
      ),
    );
  }
}
