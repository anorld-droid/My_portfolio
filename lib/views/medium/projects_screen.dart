import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/constants.dart';
import '../widgets/curve_line.dart';

class MProjectsScreen extends StatefulWidget {
  const MProjectsScreen({Key? key}) : super(key: key);

  @override
  State<MProjectsScreen> createState() => _MProjectsScreenState();
}

class _MProjectsScreenState extends State<MProjectsScreen> {
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
                   
                      Text(
                        'Some Of My Projects',
                        style: TextStyle(
                          fontSize: width > 768 ? 96 : 80,
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
                  Column(
                    children: [
                      Column(
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
                                      const Color(0xFFC31432).withOpacity(0.7),
                                      const Color(0xFFC31432).withOpacity(0.7),
                                      const Color(0xFF240B36).withOpacity(0.7),
                                      const Color(0xFF240B36).withOpacity(0.7),
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
                                  const SizedBox(
                                    width: 450,
                                    child: Text(
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
                                        onTap: () => conn.launchLink(
                                            "https://github.com/anorld-droid/UHD-Wallpapers"),
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
                                        onTap: () => conn.launchLink(
                                            "https://play.google.com/store/apps/details?id=com.anorlddroid.wallpapers4e"),
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
                            height: 120,
                          ),
                          SizedBox(
                            height: 560,
                            width: 590,
                            child: Container(
                              width: 590,
                              height: 560,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/uhd.png"),
                                      fit: BoxFit.fitHeight)),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                      Column(
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
                                      const Color(0xFFC31432).withOpacity(0.7),
                                      const Color(0xFFC31432).withOpacity(0.7),
                                      const Color(0xFF240B36).withOpacity(0.7),
                                      const Color(0xFF240B36).withOpacity(0.7),
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
                                    'Work Ethics ',
                                    style: TextStyle(
                                        fontSize: 48,
                                        fontFamily: 'Roboto',
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  const SizedBox(
                                    width: 450,
                                    child: Text(
                                      'Work ehtics is an API that stores and serves employee information to its consumers, its part of a larger system used to monitor employees in their workplace.',
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
                                        onTap: () => conn.launchLink(
                                            "https://github.com/anorld-droid/AUTOMATED-PAYROLL-SYSTEM-WITH-GPS-TRACKING-AND-IMAGE-CAPTURE/tree/api"),
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
                                        onTap: () => conn.launchLink(
                                            "https://apsapi.herokuapp.com/employees.json"),
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
                            height: 120,
                          ),
                          SizedBox(
                            height: 560,
                            width: 590,
                            child: Container(
                              width: 590,
                              height: 560,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/Api.png"),
                                      fit: BoxFit.fitHeight)),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 660,
                            width: 740,
                            child: Stack(children: [
                              Container(
                                height: 600,
                                width: 740,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "https://images.unsplash.com/photo-1597733336794-12d05021d510?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height: 600,
                                width: 740,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      const Color(0xFFC31432).withOpacity(0.7),
                                      const Color(0xFFC31432).withOpacity(0.7),
                                      const Color(0xFF240B36).withOpacity(0.7),
                                      const Color(0xFF240B36).withOpacity(0.7),
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
                                    'University enrollment ',
                                    style: TextStyle(
                                        fontSize: 48,
                                        fontFamily: 'Roboto',
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  const SizedBox(
                                    width: 700,
                                    child: Text(
                                      'A web application that facilitates the enrollement of new students to the university, it allows the students to create an account then start the enrollment process that is closely monitored by the administrator who can edit, delete and download a pdf version of the students who are at any stage of the enrollment.',
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () => conn.launchLink(
                                            "https://github.com/anorld-droid/university_enrollment"),
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
                                    ],
                                  )
                                ],
                              )
                            ]),
                          ),
                          SizedBox(
                            height: 560,
                            width: width - 50,
                            child: Container(
                              height: 560,
                              width: width - 50,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/Web.PNG"),
                                      fit: BoxFit.fitWidth)),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 120,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () => conn.navigateToHome(),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  primary: Colors.white54, // <-- Button color
                  onPrimary: Colors.white, // <-- Splash color
                ),
                child: const Icon(Icons.arrow_back_ios, color: Colors.black),
              ),
              ElevatedButton(
                onPressed: () => conn.navigateToSkills(),
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
  _MProjectsScreenState state;
  _MyController(this.state);
  void navigateToHome() {
    Navigator.pushNamedAndRemoveUntil(
        state.context, Routes.home, ModalRoute.withName(Routes.projects));
  }

  void navigateToSkills() {
    Navigator.pushNamedAndRemoveUntil(
        state.context, Routes.skills, ModalRoute.withName(Routes.projects));
  }

  launchLink(String link) async {
    String url = link;
    Uri urlEncoded = Uri.parse(url);
    if (await canLaunchUrl(urlEncoded)) {
      await launchUrl(urlEncoded);
    } else {
      throw "Could not launch $url";
    }
  }
}
