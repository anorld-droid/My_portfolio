import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../utils/constants.dart';
import '../widgets/drop_down_menu.dart';

class ESSkillsScreen extends StatefulWidget {
  const ESSkillsScreen({Key? key}) : super(key: key);

  @override
  State<ESSkillsScreen> createState() => _ESSkillsScreenState();
}

class _ESSkillsScreenState extends State<ESSkillsScreen> {
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
        appBar: AppBar(
          centerTitle: true,
          elevation: 20,
          shadowColor: Color.fromARGB(5, 255, 255, 255),
          foregroundColor: Colors.black,
          backgroundColor: Colors.black,
          title: Column(
            children: [
              SizedBox(
                height: width < 300 ? 0 : 24,
              ),
              width < 300
                  ? const Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Lobster'),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            conn.navigateToHome();
                          },
                          child: Text(
                            'Home',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width > 650
                                    ? 32
                                    : width > 500
                                        ? 24
                                        : 16,
                                fontFamily: 'Lobster'),
                          ),
                        ),
                        TextButton(
                          onPressed: () => conn.navigateToProjects(),
                          child: Text(
                            'Projects',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width > 650
                                    ? 32
                                    : width > 500
                                        ? 24
                                        : 16,
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
                              vertical: 4.0, horizontal: 8.0),
                          child: Text(
                            'Skills',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width > 650
                                    ? 32
                                    : width > 500
                                        ? 24
                                        : 16,
                                fontFamily: 'Lobster'),
                          ),
                        ),
                        const DropDownMenu()
                      ],
                    ),
            ],
          ),
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(253, 0, 0, 0).withOpacity(1)),
          ),
          SingleChildScrollView(
              child: Stack(children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 24,
              ),
              Container(
                height: width < 300 ? 275 : 340,
                width: 353,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.46),
                        spreadRadius: 5,
                        blurRadius: 30,
                        offset:
                            const Offset(0, 6), // changes position of shadow
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
                      width: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Android',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: width < 300 ? 28 : 32,
                                fontFamily: 'Lobster'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Advanced',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 24 : 28,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Programming Language - Java',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 18 : 20,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'and Kotlin',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 18 : 20,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'UI - Jatpack Compose and XML',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 18 : 20,
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
              Container(
                height: width < 300 ? 275 : 340,
                width: 353,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.46),
                        spreadRadius: 5,
                        blurRadius: 30,
                        offset:
                            const Offset(0, 6), // changes position of shadow
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
                      width: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Django',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: width < 300 ? 28 : 32,
                                fontFamily: 'Lobster'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Intermediate',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 24 : 28,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Programming Language -',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 18 : 20,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Python',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 18 : 20,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Frameworks - DRF.',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 18 : 20,
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
              Container(
                height: width < 300 ? 275 : 340,
                width: 353,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.46),
                        spreadRadius: 5,
                        blurRadius: 30,
                        offset:
                            const Offset(0, 6), // changes position of shadow
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
                        children: [
                          Text(
                            'Flutter',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: width < 300 ? 28 : 32,
                                fontFamily: 'Lobster'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Intermediate',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 24 : 28,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 32,
                        ),
                        Text(
                          'Programming Language -',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 18 : 20,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 32,
                        ),
                        Text(
                          'Dart',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 18 : 20,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 32,
                        ),
                        Text(
                          'Platforms - Web, Android,',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 18 : 20,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 32,
                        ),
                        Text(
                          'Windows and Linux',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 300 ? 18 : 20,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 542,
                    width: width - 16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.46),
                            spreadRadius: 5,
                            blurRadius: 30,
                            offset: const Offset(
                                0, 6), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: const EdgeInsets.all(4),
                          width: width - 30,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Programming Languages',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: width < 300 ? 26 : 30,
                                    fontFamily: 'Lobster'),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Beginner',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width < 300 ? 24 : 28,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Javascript',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width < 300 ? 18 : 20,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'PHP',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width < 300 ? 18 : 20,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Intermediate',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width < 300 ? 24 : 28,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Python',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width < 300 ? 18 : 20,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Dart',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width < 300 ? 18 : 20,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Advanced',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width < 300 ? 24 : 28,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Kotlin',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width < 300 ? 18 : 20,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Java',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width < 300 ? 18 : 20,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
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
                  onPressed: () => conn.navigateToHome(),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: EdgeInsets.all(width > 600
                        ? 16
                        : width < 300
                            ? 8
                            : 12),
                    primary: Colors.white54, // <-- Button color
                    onPrimary: Colors.white, // <-- Splash color
                  ),
                  child: width < 300
                      ? const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 12,
                        )
                      : const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                ),
              ],
            ),
          )
        ]));
  }
}

class _MyController {
  _ESSkillsScreenState state;
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
