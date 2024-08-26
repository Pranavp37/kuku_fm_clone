import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/dummydb.dart';
import 'package:kuku_fm_clone/view/Global_widgets/cards/cards_widget.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardsWidget(
              vipBanner: false, img: Dummydb.top10[3]['imgurl'].toString()),
        ],
      ),
    );
  }
}
