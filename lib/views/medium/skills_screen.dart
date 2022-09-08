import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../utils/constants.dart';
import '../widgets/curve_line.dart';

class MSkillsScreen extends StatefulWidget {
  const MSkillsScreen({Key? key}) : super(key: key);

  @override
  State<MSkillsScreen> createState() => _MSkillsScreenState();
}

class _MSkillsScreenState extends State<MSkillsScreen> {
  late _MyController conn;
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    conn = _MyController(this);
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(253, 0, 0, 0).withOpacity(1)),
      ),
      SingleChildScrollView(
          child: Stack(children: [
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
                TextButton(
                  onPressed: () => conn.navigateToHome(),
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
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 120,
          ),
          Container(
            height: 405,
            width: 353,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.46),
                    spreadRadius: 5,
                    blurRadius: 30,
                    offset: const Offset(0, 6), // changes position of shadow
                  ),
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: const EdgeInsets.all(4),
                  width: 210,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Android',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 44,
                            fontFamily: 'Lobster'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Advanced',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 32,
                    ),
                    Text(
                      'Programming Language - Java',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 32,
                    ),
                    Text(
                      'and Kotlin',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 32,
                    ),
                    Text(
                      'UI - Jatpack Compose and XML',
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              height: 405,
              width: 353,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.46),
                      spreadRadius: 5,
                      blurRadius: 30,
                      offset: const Offset(0, 6), // changes position of shadow
                    ),
                  ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: const EdgeInsets.all(4),
                    width: 210,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Django',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 44,
                              fontFamily: 'Lobster'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Intermediate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        'Programming Language - Python',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        'Frameworks - DRF.',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 405,
              width: 353,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.46),
                      spreadRadius: 5,
                      blurRadius: 30,
                      offset: const Offset(0, 6), // changes position of shadow
                    ),
                  ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: const EdgeInsets.all(4),
                    width: 210,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Flutter',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 44,
                              fontFamily: 'Lobster'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Intermediate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        'Programming Language - Dart',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        'Platforms - Web, Android,',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        'Windows and Linux',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
          const SizedBox(
            height: 60,
          ),
          Container(
            height: 342,
            width: width > 820 ? width - 160 : 800,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.46),
                    spreadRadius: 5,
                    blurRadius: 30,
                    offset: const Offset(0, 6), // changes position of shadow
                  ),
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: const EdgeInsets.all(4),
                  width: 510,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Programming Languages',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 44,
                            fontFamily: 'Lobster'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Beginner',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Text(
                              'C',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Javascript',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Text(
                              'PHP',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Intermediate',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Python',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Dart',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Advanced',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'Kotlin',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Java',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          )
        ])
      ])),
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () => conn.navigateToProjects(),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                primary: Colors.white54, // <-- Button color
                onPrimary: Colors.white, // <-- Splash color
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 24,
              ),
            ),
          ],
        ),
      )
    ]));
  }
}

class _MyController {
  _MSkillsScreenState state;
  _MyController(this.state);
  void navigateToProjects() {
    Navigator.pushNamedAndRemoveUntil(
        state.context, Routes.projects, ModalRoute.withName(Routes.skills));
  }

  void navigateToHome() {
    Navigator.pushNamedAndRemoveUntil(
        state.context, Routes.home, ModalRoute.withName(Routes.skills));
  }
}
