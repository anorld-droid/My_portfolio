import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../widgets/curve_line.dart';

class ELHomeScreen extends StatefulWidget {
  const ELHomeScreen({Key? key}) : super(key: key);

  @override
  State<ELHomeScreen> createState() => _ELHomeScreenState();
}

class _ELHomeScreenState extends State<ELHomeScreen> {
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
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          const SizedBox(
                            width: 41,
                          ),
                          const CircleAvatar(
                            radius: 136,
                            backgroundImage: AssetImage("images/my_photo.jpg"),
                          ),
                          const SizedBox(width: 40),
                          Column(
                            children: const [
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Patrice Mulindi',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 128,
                                    fontFamily: 'Satisfy'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 200,
                            width: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(
                                width: 75,
                              ),
                              Text(
                                'FullStack Developer',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 120,
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
                              const SizedBox(
                                width: 50,
                              ),
                              Container(
                                height: 430,
                                width: 600,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 377,
                                      width: 600,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight:
                                                  Radius.circular(20))),
                                      child: Image.asset(
                                        "images/coding.gif",
                                        width: 600,
                                        height: 377,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Dilligent full stack developer',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 64,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'with 2+ years of experience',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 64,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'writing top-quality clean code',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 64,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'for high paced businesses.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 64,
                                        fontFamily: 'Lobster'),
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
                onPressed: () {},
                child: Icon(Icons.arrow_forward_ios, color: Colors.black),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  primary: Colors.white54, // <-- Button color
                  onPrimary: Colors.white, // <-- Splash color
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class _MyController {
  _ELHomeScreenState state;
  _MyController(this.state);
}
