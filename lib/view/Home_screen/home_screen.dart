import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/dummydb.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/view/Global_widgets/cards/cards_widget.dart';
import 'package:kuku_fm_clone/view/Global_widgets/number_card/number_cards.dart';
import 'package:kuku_fm_clone/view/Home_screen/widgets/carouse_Widget/carouse_slider.dart';
import 'package:kuku_fm_clone/view/Home_screen/widgets/custom_appbar_widget/custom_appbar_.dart';
import 'package:kuku_fm_clone/view/Home_screen/widgets/listening_schedule_widget/listenting_schedule.dart';
import 'package:kuku_fm_clone/view/Home_screen/widgets/main_title_wiget/main_title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainTheamColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                      Dummydb.top10Image.length,
                      (index) => NumberCards(
                        img: Dummydb.top10Image[index],
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
                      Dummydb.cardConImage1.length,
                      (index) => CardsWidget(
                        img: Dummydb.cardConImage1[index],
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
                      Dummydb.cardConImage2.length,
                      (index) => CardsWidget(
                        img: Dummydb.cardConImage2[index],
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
