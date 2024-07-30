import 'package:flutter/material.dart';

class ListeningSchedule extends StatelessWidget {
  const ListeningSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              // color: Colors.amber.withOpacity(.4),
              height: 160,
              width: 205,
              child: Stack(
                children: [
                  Positioned(
                    right: 40,
                    top: 10,
                    child: Container(
                      height: 105,
                      width: 105,
                      decoration: const BoxDecoration(
                        // color: Colors.red.withOpacity(.4),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.cdn.kukufm.com/w:384/f:webp/q:75/https://images.cdn.kukufm.com/f:webp/https://s3.ap-south-1.amazonaws.com/kukufm/channel_icons/d144a44c30f744fbb80d961e0181f67f_landscape_994.png')),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(.6)),
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.cdn.kukufm.com/w:384/f:webp/q:75/https://images.cdn.kukufm.com/f:webp/https://s3.ap-south-1.amazonaws.com/kukufm/channel_icons/d144a44c30f744fbb80d961e0181f67f_landscape_994.png'),
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black54,
                          ),
                          child: const Center(
                              child:
                                  Icon(color: Colors.white, Icons.play_arrow)),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Episode 1/97',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff595a5c)),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 160,
              width: 205,
              // color: Colors.amber.withOpacity(.4),
              child: Stack(
                children: [
                  Positioned(
                    right: 40,
                    top: 10,
                    child: Container(
                      height: 105,
                      width: 105,
                      decoration: const BoxDecoration(
                        // color: Colors.red.withOpacity(.4),
                        color: Color(0xff3f434c),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(.6)),
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: const Color(0xff272a31),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff3f434c),
                          ),
                          child: const Center(
                              child: Icon(color: Color(0xff828083), Icons.add)),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Add Now',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16,
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
