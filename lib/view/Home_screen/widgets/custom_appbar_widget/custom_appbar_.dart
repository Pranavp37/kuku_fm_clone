import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuku_fm_clone/dummydb.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/User_profile_Screen/user_profile_screen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    int? selectedIndex = 7;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserProfileScreen(),
                )),
            child: const CircleAvatar(
                radius: 21,
                backgroundColor: Colors.orange,
                child: Skeleton.ignore(
                  child: Text(
                    'P',
                    style: TextStyle(
                        fontFamily: appfonts,
                        color: Colors.white,
                        fontSize: 28),
                  ),
                )),
          ),
          SizedBox(
            width: 200,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Icon(
                  color: Colors.white,
                  Icons.search,
                  size: 30,
                ),
                hintStyle:
                    const TextStyle(fontFamily: appfonts, color: Colors.white),
                hintText: 'Search KuKu Fm',
                suffixIcon: const Icon(
                  Icons.mic_none,
                  size: 30,
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: ColorConstant.grayLightColor,
                filled: true,
              ),
            ),
          ),
          Skeleton.ignore(
            child: GestureDetector(
              onTap: () {
                bottomSheetModel(context, selectedIndex);
              },
              child: const CircleAvatar(
                radius: 22,
                backgroundColor: ColorConstant.grayLightColor,
                child: Text(
                  'अA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const Skeleton.ignore(
            child: CircleAvatar(
                radius: 22,
                backgroundColor: ColorConstant.grayLightColor,
                child: Icon(
                  Icons.shopping_bag_rounded,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }

  Future<dynamic> bottomSheetModel(BuildContext context, int? selectedIndex) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => StatefulBuilder(
              builder: (context, setState) => Container(
                padding: const EdgeInsets.all(18),
                color: ColorConstant.mainTheamColor,
                height: 300,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Explore shows by language',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: appfonts,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: 8,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 15,
                                mainAxisExtent: 40,
                                mainAxisSpacing: 15,
                                crossAxisCount: 3),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: 25,
                            decoration: BoxDecoration(
                                color: ColorConstant.grayLightColor,
                                border: Border.all(
                                    color: selectedIndex == index
                                        ? Colors.white
                                        : ColorConstant.secondaryGrayColor,
                                    width: selectedIndex == index ? 1 : .8),
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: Text(
                                Dummydb.buttomSheetlang[index]['language']
                                    .toString(),
                                style: TextStyle(
                                    color: Dummydb.buttomSheetlang[index]
                                        ['color'],
                                    fontSize: 18,
                                    fontFamily: appfonts),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                                fontFamily: appfonts,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: 42,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            child: const Center(
                              child: Text(
                                'Save',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: appfonts),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
