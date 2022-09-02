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
      onGenerateRoute: (settings) {
        if (settings.name == Routes.home) {
          return PageRouteBuilder(
              settings:
                  settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) =>
                  const ResponsiveWidget(destination: Routes.home),
              transitionsBuilder: (_, animation, __, c) => ScaleTransition(
                    scale: animation,
                    child: FadeTransition(
                      opacity: animation,
                      child: const ResponsiveWidget(destination: Routes.home),
                    ),
                  ));
        } else if (settings.name == Routes.projects) {
          return PageRouteBuilder(
              settings:
                  settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) =>
                  const ResponsiveWidget(destination: Routes.projects),
              transitionsBuilder: (_, animation, __, c) => ScaleTransition(
                    scale: animation,
                    child: FadeTransition(
                      opacity: animation,
                      child:
                          const ResponsiveWidget(destination: Routes.projects),
                    ),
                  ));
        }

        return PageRouteBuilder(
            settings:
                settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) =>
                const ResponsiveWidget(destination: Routes.skills),
            transitionsBuilder: (_, animation, __, c) => ScaleTransition(
                  scale: animation,
                  child: FadeTransition(
                    opacity: animation,
                    child: const ResponsiveWidget(destination: Routes.skills),
                  ),
                ));
      },
    );
  }
}
