import 'package:expandable_text/expandable_text.dart';

import 'package:flutter/material.dart';

import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/Audio_details_screen/widgets/DetailsPage_TabBar/Tabbar_pages/Episode/episode_page.dart';
import 'package:kuku_fm_clone/view/Audio_details_screen/widgets/DetailsPage_TabBar/Tabbar_pages/More_like_this/more_like_this.dart';
import 'package:kuku_fm_clone/view/Audio_details_screen/widgets/DetailsPage_TabBar/Tabbar_pages/Reviews/reviews.dart';
import 'package:kuku_fm_clone/view/Audio_details_screen/widgets/DetailsPage_TabBar/Tabbar_pages/cast_and_crew/cast_and_crew.dart';
import 'package:kuku_fm_clone/view/Audio_details_screen/widgets/Review_row_container/review_row_container.dart';
import 'package:kuku_fm_clone/view/Audio_details_screen/widgets/Title_play_image/title_play_image.dart';
import 'package:kuku_fm_clone/view/Audio_details_screen/widgets/views_rating_review/views_rate_reviews.dart';

class AudioDetails extends StatelessWidget {
  const AudioDetails(
      {super.key,
      required this.audiotitle,
      required this.audioimage,
      required this.description,
      required this.like});
  final String audiotitle;
  final String audioimage;
  final String description;
  final String like;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff300808),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: ColorConstant.whiteColor,
          ),
        ),
        title: Text(
          audiotitle,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: appfonts,
            fontSize: 20,
          ),
        ),
        actions: const [
          Icon(
            Icons.share_outlined,
            size: 26,
            color: ColorConstant.whiteColor,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff300808), Color(0xff1a1b1f)])),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title play image

                TitlePlayImage(
                  audioimage: audioimage,
                ),

                //

                const SizedBox(
                  height: 15,
                ),

                //ReviewsRowContainer

                const ReviewRowContainer(),

                //
                const SizedBox(
                  height: 16,
                ),
                //
                const Text(
                  'Series ● Enterainment ● English',
                  style: TextStyle(
                      color: ColorConstant.secondaryGrayColor,
                      fontSize: 16,
                      fontFamily: appfonts),
                ),
                //
                const SizedBox(
                  height: 16,
                ),

                // views /rating/reviews
                ViewsRateReviews(
                  like: like,
                ),

                //
                const SizedBox(
                  height: 20,
                ),

                //get coin ad
                _getCoinAd(),

                //
                const SizedBox(
                  height: 22,
                ),

                //saveButton & Episode

                _buildSaveButtonEpisode(),

                //
                const SizedBox(
                  height: 22,
                ),

                //
                ExpandableText(
                    style: const TextStyle(
                        color: Colors.white, fontFamily: appfonts),
                    maxLines: 3,
                    collapseText: 'less',
                    description,
                    expandText: 'more'),

                //
                const SizedBox(
                  height: 22,
                ),

                //tabbar
                const TabBar(
                    tabAlignment: TabAlignment.start,
                    padding: EdgeInsets.all(10),
                    indicatorPadding: EdgeInsets.only(),
                    labelPadding: EdgeInsets.only(right: 20, bottom: 15),
                    isScrollable: true,
                    unselectedLabelStyle: TextStyle(
                        color: ColorConstant.secondaryGrayColor, fontSize: 17),
                    labelStyle: TextStyle(fontSize: 17),
                    dividerHeight: 0,
                    indicatorColor: Colors.red,
                    labelColor: Colors.red,
                    tabs: [
                      Text(
                        'Episodes',
                      ),
                      Text(
                        'Reviews',
                      ),
                      Text(
                        'More like this',
                      ),
                      Text(
                        'Cast & Crew',
                      ),
                    ]),
                SizedBox(
                  height: 400,
                  child: TabBarView(
                    children: [
                      EpisodePage(
                        image: audioimage,
                      ),
                      const Reviews(),
                      const MoreLikeThis(),
                      const CastAndCrew(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSaveButtonEpisode() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              shape: BoxShape.circle),
          child: const Center(
            child: Icon(
              Icons.bookmark_outline,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          height: 40,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 28,
                color: Colors.black,
              ),
              Text(
                'Resume Episode 1',
                style: TextStyle(
                    color: Colors.black, fontFamily: appfonts, fontSize: 18),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _getCoinAd() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      height: 58,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://img.pikbest.com/wp/202346/purple-minimalist-illustration-style-cartoon-of-coins-flowing-into-a-safe-box-with-the-concept-finance-savings-cost-reduction-and-earnings-on-background-banner_9619194.jpg!bw700'))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get 10 free coins daily.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: appfonts,
                ),
              ),
              Text(
                'Earn upto 1000 coins now',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.amber,
                  fontFamily: appfonts,
                ),
              )
            ],
          ),
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.greenAccent,
            ),
            child: const Center(
              child: Text(
                'Earn Now',
                style: TextStyle(color: ColorConstant.whiteColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
