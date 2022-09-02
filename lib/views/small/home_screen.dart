import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../utils/constants.dart';
import '../widgets/curve_line.dart';
import 'projects_screen.dart';

class SHomeScreen extends StatefulWidget {
  const SHomeScreen({Key? key}) : super(key: key);

  @override
  State<SHomeScreen> createState() => _SHomeScreenState();
}

class _SHomeScreenState extends State<SHomeScreen> {
  late _MyController conn;
  @override
  void initState() {
    super.initState();
    conn = _MyController(this);
  }

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
                        size: Size(width, 190),
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
                                onPressed: () => conn.navigateToProjects(),
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
                    children: [
                      CircleAvatar(
                        radius: width > 768 ? 96 : 80,
                        backgroundImage:
                            const AssetImage("images/my_photo.jpg"),
                      ),
                      Text(
                        'Patrice Mulindi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width > 768 ? 96 : 80,
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
                            children: [
                              Text(
                                'FullStack Developer',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width > 768 ? 96 : 80,
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dilligent full stack developer',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width > 768 ? 64 : 48,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'with 2+ years of experience',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width > 768 ? 64 : 48,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'writing top-quality clean code',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width > 768 ? 64 : 48,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'for high paced businesses.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width > 768 ? 64 : 48,
                                        fontFamily: 'Lobster'),
                                  ),
                                  SizedBox(
                                    height: 430,
                                    width: 525,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 377,
                                          width: 525,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20))),
                                          child: Image.asset(
                                            "images/coding.gif",
                                            width: 525,
                                            height: 377,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
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
                onPressed: () => conn.navigateToProjects(),
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
  _SHomeScreenState state;
  _MyController(this.state);
  void navigateToProjects() {
    Navigator.pushNamedAndRemoveUntil(
        state.context, Routes.projects, ModalRoute.withName(Routes.home));
  }
}
