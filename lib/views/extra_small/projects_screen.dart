import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/constants.dart';
import '../widgets/drop_down_menu.dart';

class ESProjectsScreen extends StatefulWidget {
  const ESProjectsScreen({Key? key}) : super(key: key);

  @override
  State<ESProjectsScreen> createState() => _ESProjectsScreenState();
}

class _ESProjectsScreenState extends State<ESProjectsScreen> {
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
    final PageController controller = PageController();
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
                        TextButton(
                          onPressed: () {},
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Some Of My Projects',
                            style: TextStyle(
                              fontSize: width > 650
                                  ? 64
                                  : width > 500
                                      ? 56
                                      : width < 300
                                          ? 24
                                          : 40,
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
                        height: 24,
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 310,
                                width: width > 550
                                    ? 500
                                    : width > 500
                                        ? 430
                                        : width < 300
                                            ? 240
                                            : 380,
                                child: Stack(children: [
                                  Container(
                                    height: 310,
                                    width: width > 550
                                        ? 500
                                        : width > 500
                                            ? 430
                                            : width < 300
                                                ? 240
                                                : 380,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              "https://images.unsplash.com/photo-1597733336794-12d05021d510?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    height: 310,
                                    width: width > 550
                                        ? 500
                                        : width > 500
                                            ? 430
                                            : width < 300
                                                ? 240
                                                : 380,
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
                                        height: 30,
                                      ),
                                      Text(
                                        'UHD Wallpapers',
                                        style: TextStyle(
                                            fontSize: width > 500
                                                ? 36
                                                : width < 300
                                                    ? 20
                                                    : 28,
                                            fontFamily: 'Roboto',
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: width > 550
                                            ? 460
                                            : width > 500
                                                ? 390
                                                : width < 300
                                                    ? 180
                                                    : 320,
                                        child: Text(
                                          'This an android application show cases different sets of images from unsplash and allows its users to download or set them as wallpapers.',
                                          textAlign: TextAlign.center,
                                          textWidthBasis: TextWidthBasis.parent,
                                          style: TextStyle(
                                              fontSize: width > 500
                                                  ? 32
                                                  : width < 300
                                                      ? 16
                                                      : 24,
                                              fontFamily: 'Roboto',
                                              color: Colors.white),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            onTap: () => conn.launchLink(
                                                "https://github.com/anorld-droid/UHD-Wallpapers"),
                                            child: Container(
                                              width: width > 500
                                                  ? 180
                                                  : width < 300
                                                      ? 100
                                                      : 145,
                                              alignment: Alignment.center,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12,
                                                      horizontal: 2),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                color: Colors.black,
                                              ),
                                              child: Text(
                                                'Github Repo',
                                                style: TextStyle(
                                                    fontSize: width > 500
                                                        ? 24
                                                        : width > 300
                                                            ? 20
                                                            : 16,
                                                    fontFamily: 'Roboto',
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () => conn.launchLink(
                                                "https://play.google.com/store/apps/details?id=com.anorlddroid.wallpapers4e"),
                                            child: Container(
                                              width: width > 500
                                                  ? 180
                                                  : width < 300
                                                      ? 100
                                                      : 145,
                                              alignment: Alignment.center,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 2),
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                              child: Text(
                                                'See Live',
                                                style: TextStyle(
                                                    fontSize: width > 500
                                                        ? 24
                                                        : width > 300
                                                            ? 20
                                                            : 16,
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
                                height: 45,
                              ),
                              SizedBox(
                                height: 560,
                                width: width > 500
                                    ? 590
                                    : width < 300
                                        ? 290
                                        : 390,
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
                            height: 60,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 310,
                                width: width > 550
                                    ? 500
                                    : width > 500
                                        ? 430
                                        : width < 300
                                            ? 240
                                            : 380,
                                child: Stack(children: [
                                  Container(
                                    height: 310,
                                    width: width > 550
                                        ? 500
                                        : width > 500
                                            ? 430
                                            : width < 300
                                                ? 240
                                                : 380,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              "https://images.unsplash.com/photo-1597733336794-12d05021d510?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    height: 310,
                                    width: width > 550
                                        ? 500
                                        : width > 500
                                            ? 430
                                            : width < 300
                                                ? 240
                                                : 380,
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
                                        height: 30,
                                      ),
                                      Text(
                                        'Work Ethics ',
                                        style: TextStyle(
                                            fontSize: width > 500
                                                ? 36
                                                : width < 300
                                                    ? 20
                                                    : 28,
                                            fontFamily: 'Roboto',
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: width > 550
                                            ? 460
                                            : width > 500
                                                ? 390
                                                : width < 300
                                                    ? 180
                                                    : 320,
                                        child: Text(
                                          'Work ehtics is an API that stores and serves employee information to its consumers, its part of a larger system used to monitor employees in their workplace.',
                                          textAlign: TextAlign.center,
                                          textWidthBasis: TextWidthBasis.parent,
                                          style: TextStyle(
                                              fontSize: width > 500
                                                  ? 32
                                                  : width < 300
                                                      ? 16
                                                      : 24,
                                              fontFamily: 'Roboto',
                                              color: Colors.white),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            onTap: () => conn.launchLink(
                                                "https://github.com/anorld-droid/AUTOMATED-PAYROLL-SYSTEM-WITH-GPS-TRACKING-AND-IMAGE-CAPTURE/tree/api"),
                                            child: Container(
                                              width: width > 500
                                                  ? 180
                                                  : width < 300
                                                      ? 100
                                                      : 145,
                                              alignment: Alignment.center,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12,
                                                      horizontal: 2),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                color: Colors.black,
                                              ),
                                              child: Text(
                                                'Github Repo',
                                                style: TextStyle(
                                                    fontSize: width > 500
                                                        ? 24
                                                        : width > 300
                                                            ? 20
                                                            : 16,
                                                    fontFamily: 'Roboto',
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () => conn.launchLink(
                                                "https://apsapi.herokuapp.com/employees.json"),
                                            child: Container(
                                              width: width > 500
                                                  ? 180
                                                  : width < 300
                                                      ? 100
                                                      : 145,
                                              alignment: Alignment.center,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8,
                                                      horizontal: 2),
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                              child: Text(
                                                'See Live',
                                                style: TextStyle(
                                                    fontSize: width > 500
                                                        ? 24
                                                        : width > 300
                                                            ? 20
                                                            : 16,
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
                                height: 45,
                              ),
                              SizedBox(
                                height: 430,
                                width: width - 60,
                                child: Container(
                                  height: 430,
                                  width: width - 60,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("images/Api.png"),
                                          fit: BoxFit.fitWidth)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 440,
                                width: width > 550
                                    ? 500
                                    : width > 500
                                        ? 430
                                        : width < 300
                                            ? 240
                                            : 380,
                                child: Stack(children: [
                                  Container(
                                    height: 440,
                                    width: width > 550
                                        ? 500
                                        : width > 500
                                            ? 430
                                            : width < 300
                                                ? 240
                                                : 380,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              "https://images.unsplash.com/photo-1597733336794-12d05021d510?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    height: 440,
                                    width: width > 550
                                        ? 500
                                        : width > 500
                                            ? 430
                                            : width < 300
                                                ? 240
                                                : 380,
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
                                        height: 30,
                                      ),
                                      Text(
                                        'University enrollment ',
                                        style: TextStyle(
                                            fontSize: width > 500
                                                ? 36
                                                : width < 300
                                                    ? 20
                                                    : 28,
                                            fontFamily: 'Roboto',
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: width > 550
                                            ? 460
                                            : width > 500
                                                ? 390
                                                : width < 300
                                                    ? 180
                                                    : 320,
                                        child: Text(
                                          'A web application that facilitates the enrollement of new students to the university, it allows the students to create an account then start the enrollment process that is closely monitored by the administrator who can edit, delete and download a pdf version of the students who are at any stage of the enrollment.',
                                          textAlign: TextAlign.center,
                                          textWidthBasis: TextWidthBasis.parent,
                                          style: TextStyle(
                                              fontSize: width > 500
                                                  ? 32
                                                  : width < 300
                                                      ? 16
                                                      : 24,
                                              fontFamily: 'Roboto',
                                              color: Colors.white),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            onTap: () => conn.launchLink(
                                                "https://github.com/anorld-droid/university_enrollment"),
                                            child: Container(
                                              width: width > 500
                                                  ? 180
                                                  : width < 300
                                                      ? 100
                                                      : 145,
                                              alignment: Alignment.center,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12,
                                                      horizontal: 2),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                color: Colors.black,
                                              ),
                                              child: Text(
                                                'Github Repo',
                                                style: TextStyle(
                                                    fontSize: width > 500
                                                        ? 24
                                                        : width > 300
                                                            ? 20
                                                            : 16,
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
                                height: 430,
                                width: width - 50,
                                child: Container(
                                  height: 430,
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
                            height: 10,
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
                  ElevatedButton(
                    onPressed: () => conn.navigateToSkills(),
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
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 12,
                          )
                        : const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
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
  _ESProjectsScreenState state;
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
