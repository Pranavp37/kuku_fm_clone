import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/dummydb.dart';

import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';

class CardList extends StatelessWidget {
  const CardList(
      {super.key,
      this.iteamCount,
      this.maintitile,
      this.imag,
      this.titile,
      this.description});
  final int? iteamCount;
  final String? maintitile;
  final String? imag;
  final String? titile;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainTheamColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.mainTheamColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'New Release',
          style: TextStyle(
              fontSize: 19, color: Colors.white, fontFamily: appfonts),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                                fit: BoxFit.cover,
                                height: 120,
                                width: 130,
                                Dummydb.newRelease[index]['imgurl'].toString()),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Dummydb.newRelease[index]['name'].toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: appfonts,
                                    fontSize: 18),
                              ),
                              Text(
                                'New.${index + 20} mint',
                                style: const TextStyle(
                                    color: ColorConstant.secondaryGrayColor,
                                    fontFamily: appfonts,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 240,
                                child: Text(
                                  Dummydb.newRelease[index]['description']
                                      .toString(),
                                  style: const TextStyle(
                                      color: ColorConstant.secondaryGrayColor,
                                      overflow: TextOverflow.ellipsis,
                                      fontFamily: appfonts,
                                      fontSize: 14),
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 30,
                      ),
                  itemCount: Dummydb.newRelease.length),
            )
          ],
        ),
      ),
    );
  }
}
