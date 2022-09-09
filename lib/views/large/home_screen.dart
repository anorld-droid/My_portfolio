import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../utils/constants.dart';
import '../widgets/curve_line.dart';
import '../widgets/drop_down_menu.dart';
import 'projects_screen.dart';

class LHomeScreen extends StatefulWidget {
  static const routeName = "views/HomeScreen";
  const LHomeScreen({Key? key}) : super(key: key);

  @override
  State<LHomeScreen> createState() => _LHomeScreenState();
}

class _LHomeScreenState extends State<LHomeScreen> {
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
                                onPressed: () => conn.navigateToSkills(),
                                child: const Text(
                                  'Skills',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontFamily: 'Lobster'),
                                ),
                              ),
                                                            const DropDownMenu()

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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 41,
                          ),
                          const CircleAvatar(
                            radius: 112,
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
                                    fontSize: 112,
                                    fontFamily: 'Satisfy'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 250,
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
                              const SizedBox(
                                width: 50,
                              ),
                              Container(
                                height: 430,
                                width: 525,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 377,
                                      width: 525,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Dilligent full stack developer',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 48,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'with 2+ years of experience',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 48,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'writing top-quality clean code',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 48,
                                        fontFamily: 'Lobster'),
                                  ),
                                  Text(
                                    'for high paced businesses.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 48,
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
  _LHomeScreenState state;
  _MyController(this.state);
  void navigateToProjects() {
    Navigator.pushNamedAndRemoveUntil(
        state.context, Routes.projects, ModalRoute.withName(Routes.home));
  }

  void navigateToSkills() {
    Navigator.pushNamedAndRemoveUntil(
        state.context, Routes.skills, ModalRoute.withName(Routes.home));
  }
}
