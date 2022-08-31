import 'package:flutter/material.dart';
import 'package:patrice_portfolio/utils/constants.dart';
import 'package:patrice_portfolio/views/responsive.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => ResponsiveWidget(destination: Routes.home),
        Routes.projects: (context) =>
            ResponsiveWidget(destination: Routes.projects),
        Routes.skills: (context) => ResponsiveWidget(destination: Routes.skills)
      },
    );
  }
}
