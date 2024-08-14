import 'package:flutter/material.dart';

class TitlePlayImage extends StatelessWidget {
  const TitlePlayImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.4,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/09/encanto-header.jpg'))),
      child: Center(
        child: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
              color: Colors.black54, shape: BoxShape.circle),
          child: const Center(
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 45,
            ),
          ),
        ),
      ),
    );
  }
}
