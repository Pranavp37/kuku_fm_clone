import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/dummydb.dart';

class CarouseSlider extends StatelessWidget {
  const CarouseSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: Dummydb.carouselImage.length,
        itemBuilder: (context, index, realIndex) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(Dummydb.carouselImage[index])),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 25,
                        width: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5.0)),
                          color: Color(0xfffde689),
                        ),
                        child: const Center(
                            child: Text(
                          'VIP',
                          style: TextStyle(
                              color: Color(0xff9e6220), fontSize: 18.0),
                        )),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 5,
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffffffff),
                        ),
                        child: const Center(child: Icon(Icons.play_arrow)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        options: CarouselOptions(
          autoPlayCurve: Curves.fastOutSlowIn,
          height: 200.0,
          aspectRatio: 1,
          autoPlay: true,
          viewportFraction: 0.8,
        ));
  }
}
