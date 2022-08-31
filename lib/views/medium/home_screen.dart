import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../widgets/curve_line.dart';

class MHomeScreen extends StatefulWidget {
  static const routeName = "views/HomeScreen";
  const MHomeScreen({Key? key}) : super(key: key);

  @override
  State<MHomeScreen> createState() => _MHomeScreenState();
}

class _MHomeScreenState extends State<MHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(253, 0, 0, 0).withOpacity(1)),
        ),
        SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      CustomPaint(
                        size: Size(width, 170),
                        painter: MyPainter(),
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlineGradientButton(
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFFC31432),
                                    Color(0xFFC31432),
                                    Color(0xFF240B36),
                                    Color(0xFF240B36),
                                  ],
                                ),
                                strokeWidth: 3,
                                radius: const Radius.circular(8),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2.0, horizontal: 8.0),
                                child: const Text(
                                  'Home',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontFamily: 'Lobster'),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Projects',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontFamily: 'Lobster'),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Skills',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontFamily: 'Lobster'),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Contacts',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontFamily: 'Lobster'),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 104,
                        backgroundImage: AssetImage("images/my_photo.jpg"),
                      ),
                      Text(
                        'Patrice Mulindi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 104,
                            fontFamily: 'Satisfy'),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(
                                width: 0,
                              ),
                              Text(
                                'FullStack Developer',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 104,
                                    fontFamily: 'Lobster'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 55,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              width > 1092
                                  ? Container(
                                      height: 430,
                                      width: width > 1092 ? 525 : 625,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 377,
                                            width: width > 1092 ? 525 : 625,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20))),
                                            child: Image.asset(
                                              "images/coding.gif",
                                              width: width > 1092 ? 525 : 625,
                                              height: 377,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dilligent full stack developer',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width > 1092 ? 48 : 64,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'with 2+ years of experience',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width > 1092 ? 48 : 64,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'writing top-quality clean code',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width > 1092 ? 48 : 64,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'for high paced businesses.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width > 1092 ? 48 : 64,
                                        fontFamily: 'Lobster'),
                                  ),
                                  width < 1092
                                      ? Container(
                                          height: 430,
                                          width: 525,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 377,
                                                width: 525,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft: Radius
                                                                .circular(20),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20))),
                                                child: Image.asset(
                                                  "images/coding.gif",
                                                  width: 525,
                                                  height: 377,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  primary: Colors.white54, // <-- Button color
                  onPrimary: Colors.white, // <-- Splash color
                ),
                child: const Icon(Icons.arrow_forward_ios, color: Colors.black),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class _MyController {
  _MHomeScreenState state;
  _MyController(this.state);
}
