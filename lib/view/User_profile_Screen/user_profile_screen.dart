import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/User_profile_Screen/widgets/Activites_screen/activies_screen.dart';
import 'package:kuku_fm_clone/view/User_profile_Screen/widgets/MyList_screen/my_list_screen.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: ColorConstant.mainTheamColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Resonant_Trendsette514',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontFamily: appfonts,
          ),
        ),
        backgroundColor: ColorConstant.mainTheamColor,
        // leading: const Icon(
        //   Icons.arrow_back,
        //   size: 28,
        //   color: Colors.white,
        // ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.edit,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(
            width: 4,
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: ListView(
          children: [
            profilefollowesfollowinglist(),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Listen to what you Love',
                  style: TextStyle(color: ColorConstant.secondaryGrayColor)),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Studio',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // TabBar

            const TabBar(
                dividerHeight: 0,
                isScrollable: true,
                indicatorColor: ColorConstant.whiteColor,
                indicatorSize: TabBarIndicatorSize.tab,
                tabAlignment: TabAlignment.start,
                labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                unselectedLabelStyle:
                    TextStyle(color: ColorConstant.secondaryGrayColor),
                tabs: [
                  Tab(
                    child: Text('My List'),
                  ),
                  Tab(
                    child: Text('Activites'),
                  ),
                ]),
            const SizedBox(
              height: 400,
              child: TabBarView(children: [
                MyListScreen(),
                ActiviesScreen(),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget profilefollowesfollowinglist() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.orange,
              child: Text(
                'P',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '0',
                  style: TextStyle(
                    color: ColorConstant.whiteColor,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Followers',
                  style: TextStyle(
                    color: ColorConstant.whiteColor,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 8,
            ),
            SizedBox(
              height: 45,
              child: VerticalDivider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '1',
                  style: TextStyle(
                    color: ColorConstant.whiteColor,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Following',
                  style: TextStyle(
                    color: ColorConstant.whiteColor,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 45,
              child: VerticalDivider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '1',
                  style: TextStyle(
                    color: ColorConstant.whiteColor,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Plays',
                  style: TextStyle(
                    color: ColorConstant.whiteColor,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
