import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/dummydb.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/view/Audio_details_screen/audio_details.dart';
import 'package:kuku_fm_clone/view/Global_widgets/cards/cards_widget.dart';
import 'package:kuku_fm_clone/view/Global_widgets/number_card/number_cards.dart';
import 'package:kuku_fm_clone/view/Home_screen/widgets/carouse_Widget/carouse_slider.dart';
import 'package:kuku_fm_clone/view/Home_screen/widgets/custom_appbar_widget/custom_appbar_.dart';
import 'package:kuku_fm_clone/view/Home_screen/widgets/listening_schedule_widget/listenting_schedule.dart';
import 'package:kuku_fm_clone/view/Home_screen/widgets/main_title_wiget/main_title_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _loading = true;
  bool _firstRun = true;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  Future _startLoading() async {
    if (_firstRun) {
      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        _loading = false;
        _firstRun = false;
      });
    } else {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainTheamColor,
      body: SafeArea(
        child: Skeletonizer(
          enabled: _loading,
          effect: const ShimmerEffect(highlightColor: Colors.white),
          child: ListView(
            children: [
              //AppBar
              const CustomAppBar(),

              const SizedBox(
                height: 5,
              ),

              //CarouseSlider
              const CarouseSlider(),

              const SizedBox(
                height: 5,
              ),

              //titile
              const MainTitleWiget(
                titile: 'Your Listening Schedule',
              ),
              const SizedBox(
                height: 5,
              ),

              //ListeningSchedule
              const ListeningSchedule(),

              const SizedBox(
                height: 5,
              ),

              //titile2
              const MainTitleWiget(
                titile: 'Top 10',
              ),

              const SizedBox(
                height: 5,
              ),

              //numbercard
              LimitedBox(
                maxHeight: 160,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      Dummydb.top10.length,
                      (index) => NumberCards(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AudioDetails(
                                like: Dummydb.top10[index]['like'].toString(),
                                description: Dummydb.top10[index]['description']
                                    .toString(),
                                audioimage:
                                    Dummydb.top10[index]['imgurl'].toString(),
                                audiotitle:
                                    Dummydb.top10[index]['name'].toString(),
                              ),
                            )),
                        img: Dummydb.top10[index]['imgurl'].toString(),
                        index: index,
                      ),
                    )),
              ),

              //newRelease
              const MainTitleWiget(titile: 'New Release'),

              const SizedBox(
                height: 5,
              ),

              //cards
              LimitedBox(
                maxHeight: 160,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      Dummydb.newRelease.length,
                      (index) => CardsWidget(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AudioDetails(
                                like: Dummydb.newRelease[index]['like']
                                    .toString(),
                                description: Dummydb.newRelease[index]
                                        ['description']
                                    .toString(),
                                audioimage: Dummydb.newRelease[index]['imgurl']
                                    .toString(),
                                audiotitle: Dummydb.newRelease[index]['name']
                                    .toString(),
                              ),
                            )),
                        vipBanner: false,
                        img: Dummydb.newRelease[index]['imgurl'].toString(),
                      ),
                    )),
              ),

              //newRelease
              const MainTitleWiget(titile: 'Prime Time Binge'),

              //cards
              LimitedBox(
                maxHeight: 160,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      Dummydb.primeTime.length,
                      (index) => CardsWidget(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AudioDetails(
                                like:
                                    Dummydb.primeTime[index]['like'].toString(),
                                description: Dummydb.newRelease[index]
                                        ['description']
                                    .toString(),
                                audioimage: Dummydb.primeTime[index]['imgurl']
                                    .toString(),
                                audiotitle:
                                    Dummydb.primeTime[index]['name'].toString(),
                              ),
                            )),
                        img: Dummydb.primeTime[index]['imgurl'].toString(),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
