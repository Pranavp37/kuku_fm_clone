import 'package:flutter/material.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      backgroundColor: const Color(0xff1a1b1f),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 21,
                    backgroundColor: Colors.orange,
                    child: Text(
                      'P',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
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
                        hintStyle: const TextStyle(color: Colors.white),
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
                  const CircleAvatar(
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
