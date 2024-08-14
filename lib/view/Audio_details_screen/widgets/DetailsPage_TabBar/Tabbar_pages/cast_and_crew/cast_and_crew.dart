import 'package:flutter/material.dart';

class CastAndCrew extends StatelessWidget {
  const CastAndCrew({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      3,
      (index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8mcdA_uoJahxn3PQ-IC9WROV-GF2wuTl2FQ&s'),
            ),
            const SizedBox(
              width: 18,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lantern Audio',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Publisher . 32 followrs',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 28,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 1)),
              child: const Center(
                child: Text(
                  'Follow',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
