import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuku_fm_clone/utils/color_constant.dart';
import 'package:kuku_fm_clone/utils/font_const.dart';
import 'package:kuku_fm_clone/view/Botton_nav_bar/botton_nav_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainTheamColor,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 2.3,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://assets.gqindia.com/photos/63ae9287c3feba94029eddc7/master/pass/Best-Indian-Fiction-2022_02.jpg'))),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                              Colors.black,
                              Colors.black,
                              Colors.transparent
                            ])),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 300, right: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    const Text(
                      'Login for personalised listening',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: appfonts),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    //textfiled and

                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.shade700, width: 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: ColorConstant.secondaryGrayColor,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20))),
                            width: 60,
                            height: 60,
                            child: const Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: '+91 Enter Mobile Number',
                                hintStyle: TextStyle(
                                    fontSize: 20,
                                    color: ColorConstant.secondaryGrayColor)),
                          ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),

                    //button

                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottonNavBar(),
                          )),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 1,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            'Send OTP',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: appfonts,
                                fontSize: 22),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 38,
                    ),

                    // or

                    const Padding(
                      padding: EdgeInsets.only(left: 174),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),

                    //

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade700),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        children: [
                          Image.asset(
                              height: 30,
                              'assets/images/Google__G__logo.svg.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Google',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: appfonts),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: ColorConstant.secondaryGrayColor,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),

                    //

                    // const Text(
                    //   'By continuing ,you accept our Privacy Po;icy and T&C',
                    //   style: TextStyle(color: Colors.grey),
                    // )

                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text.rich(
                          style: TextStyle(color: Colors.grey),
                          TextSpan(children: [
                            TextSpan(text: 'By continuing ,you accept our '),
                            TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    color: Colors.white)),
                            TextSpan(text: ' and '),
                            TextSpan(
                                text: 'T&C ',
                                style: TextStyle(
                                  color: Colors.white,
                                  decorationColor: Colors.white,
                                  decoration: TextDecoration.underline,
                                )),
                          ])),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
