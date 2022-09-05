import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:scroll_indicator/scroll_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/constants.dart';
import '../widgets/curve_line.dart';

class ELProjectsScreen extends StatefulWidget {
  const ELProjectsScreen({Key? key}) : super(key: key);

  @override
  State<ELProjectsScreen> createState() => _ELProjectsScreenState();
}

class _ELProjectsScreenState extends State<ELProjectsScreen> {
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
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(253, 0, 0, 0).withOpacity(1)),
        ),
        SingleChildScrollView(
          child: Stack(
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 75,
                      ),
                      Text(
                        'Some Of My Projects',
                        style: TextStyle(
                          fontSize: 120,
                          fontFamily: 'Lobster',
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = Colors.white.withOpacity(0.65),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 560,
                              width: 590,
                              child: Stack(children: [
                                Container(
                                  height: 560,
                                  width: 590,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://images.unsplash.com/photo-1597733336794-12d05021d510?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  height: 560,
                                  width: 590,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        const Color(0xFFC31432)
                                            .withOpacity(0.7),
                                        const Color(0xFFC31432)
                                            .withOpacity(0.7),
                                        const Color(0xFF240B36)
                                            .withOpacity(0.7),
                                        const Color(0xFF240B36)
                                            .withOpacity(0.7),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 60,
                                    ),
                                    const Text(
                                      'UHD Wallpapers',
                                      style: TextStyle(
                                          fontSize: 48,
                                          fontFamily: 'Roboto',
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      width: 450,
                                      child: const Text(
                                        'This an android application show cases different sets of images from unsplash and allows its users to download or set them as wallpapers.',
                                        textAlign: TextAlign.center,
                                        textWidthBasis: TextWidthBasis.parent,
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontFamily: 'Roboto',
                                            color: Colors.white),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 35,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () => conn.github(),
                                          child: Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 2),
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                              color: Colors.black,
                                            ),
                                            child: const Text(
                                              'Github Repo',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'Roboto',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () => conn.github(),
                                          child: Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 2),
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                color: Colors.transparent,
                                                border: Border(
                                                    top: BorderSide(
                                                        color: Colors.white,
                                                        width: 1),
                                                    bottom: BorderSide(
                                                        color: Colors.white,
                                                        width: 1),
                                                    left: BorderSide(
                                                        color: Colors.white,
                                                        width: 1),
                                                    right: BorderSide(
                                                        color: Colors.white,
                                                        width: 1))),
                                            child: const Text(
                                              'See Live',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'Roboto',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                            ),
                            const SizedBox(
                              width: 120,
                            ),
                            SizedBox(
                              height: 560,
                              width: 590,
                              child: Container(
                                width: 590,
                                height: 560,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://raw.githubusercontent.com/anorld-droid/UHD-Wallpapers/master/app-screenshots/categories_screen.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 560,
                              width: 590,
                              child: Stack(children: [
                                Container(
                                  height: 560,
                                  width: 590,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://images.unsplash.com/photo-1597733336794-12d05021d510?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  height: 560,
                                  width: 590,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        const Color(0xFFC31432)
                                            .withOpacity(0.7),
                                        const Color(0xFFC31432)
                                            .withOpacity(0.7),
                                        const Color(0xFF240B36)
                                            .withOpacity(0.7),
                                        const Color(0xFF240B36)
                                            .withOpacity(0.7),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 60,
                                    ),
                                    const Text(
                                      'UHD Wallpapers',
                                      style: TextStyle(
                                          fontSize: 48,
                                          fontFamily: 'Roboto',
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      width: 450,
                                      child: const Text(
                                        'This an android application show cases different sets of images from unsplash and allows its users to download or set them as wallpapers.',
                                        textAlign: TextAlign.center,
                                        textWidthBasis: TextWidthBasis.parent,
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontFamily: 'Roboto',
                                            color: Colors.white),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 35,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () => conn.github(),
                                          child: Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 2),
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                              color: Colors.black,
                                            ),
                                            child: const Text(
                                              'Github Repo',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'Roboto',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () => conn.github(),
                                          child: Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 2),
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                color: Colors.transparent,
                                                border: Border(
                                                    top: BorderSide(
                                                        color: Colors.white,
                                                        width: 1),
                                                    bottom: BorderSide(
                                                        color: Colors.white,
                                                        width: 1),
                                                    left: BorderSide(
                                                        color: Colors.white,
                                                        width: 1),
                                                    right: BorderSide(
                                                        color: Colors.white,
                                                        width: 1))),
                                            child: const Text(
                                              'See Live',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'Roboto',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                            ),
                            const SizedBox(
                              width: 120,
                            ),
                            SizedBox(
                              height: 560,
                              width: 590,
                              child: Container(
                                width: 590,
                                height: 560,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://raw.githubusercontent.com/anorld-droid/UHD-Wallpapers/master/app-screenshots/categories_screen.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 560,
                              width: 590,
                              child: Stack(children: [
                                Container(
                                  height: 560,
                                  width: 590,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://images.unsplash.com/photo-1597733336794-12d05021d510?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  height: 560,
                                  width: 590,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        const Color(0xFFC31432)
                                            .withOpacity(0.7),
                                        const Color(0xFFC31432)
                                            .withOpacity(0.7),
                                        const Color(0xFF240B36)
                                            .withOpacity(0.7),
                                        const Color(0xFF240B36)
                                            .withOpacity(0.7),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 60,
                                    ),
                                    const Text(
                                      'UHD Wallpapers',
                                      style: TextStyle(
                                          fontSize: 48,
                                          fontFamily: 'Roboto',
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      width: 450,
                                      child: const Text(
                                        'This an android application show cases different sets of images from unsplash and allows its users to download or set them as wallpapers.',
                                        textAlign: TextAlign.center,
                                        textWidthBasis: TextWidthBasis.parent,
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontFamily: 'Roboto',
                                            color: Colors.white),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 35,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () => conn.github(),
                                          child: Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 2),
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                              color: Colors.black,
                                            ),
                                            child: const Text(
                                              'Github Repo',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'Roboto',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () => conn.github(),
                                          child: Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 2),
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                color: Colors.transparent,
                                                border: Border(
                                                    top: BorderSide(
                                                        color: Colors.white,
                                                        width: 1),
                                                    bottom: BorderSide(
                                                        color: Colors.white,
                                                        width: 1),
                                                    left: BorderSide(
                                                        color: Colors.white,
                                                        width: 1),
                                                    right: BorderSide(
                                                        color: Colors.white,
                                                        width: 1))),
                                            child: const Text(
                                              'See Live',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'Roboto',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                            ),
                            const SizedBox(
                              width: 120,
                            ),
                            SizedBox(
                              height: 560,
                              width: 590,
                              child: Container(
                                width: 590,
                                height: 560,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://raw.githubusercontent.com/anorld-droid/UHD-Wallpapers/master/app-screenshots/categories_screen.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}

class _MyController {
  _ELProjectsScreenState state;
  _MyController(this.state);
  void navigateToHome() {
    Navigator.pushNamedAndRemoveUntil(
        state.context, Routes.home, ModalRoute.withName(Routes.projects));
  }

  void navigateToSkills() {
    Navigator.pushNamedAndRemoveUntil(
        state.context, Routes.skills, ModalRoute.withName(Routes.projects));
  }

  github() async {
    const url = "https://github.com/anorld-droid/UHD-Wallpapers";
    Uri urlEncoded = Uri.parse(url);
    if (await canLaunchUrl(urlEncoded)) {
      await launchUrl(urlEncoded);
    } else {
      throw "Could not launch $url";
    }
  }
}
