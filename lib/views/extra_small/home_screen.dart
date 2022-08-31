import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../widgets/curve_line.dart';

class ESHomeScreen extends StatefulWidget {
  const ESHomeScreen({Key? key}) : super(key: key);

  @override
  State<ESHomeScreen> createState() => _ESHomeScreenState();
}

class _ESHomeScreenState extends State<ESHomeScreen> {
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
                          onPressed: () {},
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
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Contacts',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width > 650
                                    ? 32
                                    : width > 500
                                        ? 24
                                        : 16,
                                fontFamily: 'Lobster'),
                          ),
                        )
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: width > 700
                                ? 80
                                : width < 300
                                    ? 40
                                    : 64,
                            backgroundImage:
                                const AssetImage("images/my_photo.jpg"),
                          ),
                          Text(
                            'Patrice Mulindi',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width > 700
                                    ? 80
                                    : width > 650
                                        ? 64
                                        : width > 500
                                            ? 56
                                            : width < 300
                                                ? 24
                                                : 40,
                                fontFamily: 'Satisfy'),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'FullStack Developer',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width > 700
                                            ? 80
                                            : width > 650
                                                ? 56
                                                : width > 500
                                                    ? 48
                                                    : width < 300
                                                        ? 24
                                                        : 40,
                                        fontFamily: 'Lobster'),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Dilligent full stack developer',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width > 700
                                                ? 48
                                                : width > 650
                                                    ? 32
                                                    : width < 300
                                                        ? 16
                                                        : 24,
                                            fontFamily: 'Lobster'),
                                      ),
                                      Text(
                                        'with 2+ years of experience',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width > 700
                                                ? 48
                                                : width > 650
                                                    ? 32
                                                    : width < 300
                                                        ? 16
                                                        : 24,
                                            fontFamily: 'Lobster'),
                                      ),
                                      Text(
                                        'writing top-quality clean code',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width > 700
                                                ? 48
                                                : width > 650
                                                    ? 32
                                                    : width < 300
                                                        ? 16
                                                        : 24,
                                            fontFamily: 'Lobster'),
                                      ),
                                      Text(
                                        'for high paced businesses.',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width > 700
                                                ? 48
                                                : width > 650
                                                    ? 32
                                                    : width < 300
                                                        ? 16
                                                        : 24,
                                            fontFamily: 'Lobster'),
                                      ),
                                      SizedBox(
                                        width: width > 700
                                            ? 525
                                            : width > 650
                                                ? 425
                                                : width > 500
                                                    ? 375
                                                    : width < 300
                                                        ? 225
                                                        : 325,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: width < 500 ? 307 : 357,
                                              width: width > 700
                                                  ? 525
                                                  : width > 650
                                                      ? 425
                                                      : width > 500
                                                          ? 375
                                                          : width < 300
                                                              ? 225
                                                              : 325,
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  20),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  20))),
                                              child: Image.asset(
                                                "images/coding.gif",
                                                width: width > 700
                                                    ? 525
                                                    : width > 650
                                                        ? 425
                                                        : width > 500
                                                            ? 375
                                                            : width < 300
                                                                ? 225
                                                                : 325,
                                                height: width < 500 ? 307 : 357,
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: EdgeInsets.all(width > 650
                          ? 20
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
  _ESHomeScreenState state;
  _MyController(this.state);
}
