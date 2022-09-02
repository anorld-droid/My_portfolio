import 'package:flutter/material.dart';
import 'package:patrice_portfolio/utils/constants.dart';
import 'extra_large/home_screen.dart';
import 'extra_large/projects_screen.dart';
import 'extra_large/skills_screen.dart';
import 'extra_small/home_screen.dart';
import 'extra_small/projects_screen.dart';
import 'extra_small/skills_screen.dart';
import 'large/home_screen.dart';
import 'large/projects_screen.dart';
import 'large/skills_screen.dart';
import 'medium/home_screen.dart';
import 'medium/projects_screen.dart';
import 'medium/skills_screen.dart';
import 'small/home_screen.dart';
import 'small/projects_screen.dart';
import 'small/skills_screen.dart';

class ResponsiveWidget extends StatefulWidget {
  final String destination;
  const ResponsiveWidget({required this.destination, Key? key})
      : super(key: key);

  @override
  State<ResponsiveWidget> createState() => _ResponsiveWidgetState();
}

class _ResponsiveWidgetState extends State<ResponsiveWidget> {
  ScreenSizes screenSizes = ScreenSizes();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (widget.destination == Routes.home) {
        if (constraints.maxWidth >= ScreenSizes.extraLarge) {
          return const ELHomeScreen();
        } else if (constraints.maxWidth >= ScreenSizes.largeDevices) {
          return const LHomeScreen();
        } else if (constraints.maxWidth >= ScreenSizes.mediumDevices) {
          return const MHomeScreen();
        } else if (constraints.maxWidth >= ScreenSizes.smallDevices) {
          return const SHomeScreen();
        }
        return const ESHomeScreen();
      } else if (widget.destination == Routes.projects) {
        if (constraints.maxWidth >= ScreenSizes.extraLarge) {
          return const ELProjectsScreen();
        } else if (constraints.maxWidth >= ScreenSizes.largeDevices) {
          return const LProjectsScreen();
        } else if (constraints.maxWidth >= ScreenSizes.mediumDevices) {
          return const MProjectsScreen();
        } else if (constraints.maxWidth >= ScreenSizes.smallDevices) {
          return const SProjectsScreen();
        }
        return const ESProjectsScreen();
      } else {
        if (constraints.maxWidth > ScreenSizes.extraLarge) {
          return const ELSkillsScreen();
        } else if (constraints.maxWidth >= ScreenSizes.largeDevices) {
          return const LSkillsScreen();
        } else if (constraints.maxWidth >= ScreenSizes.mediumDevices) {
          return const MSkillsScreen();
        } else if (constraints.maxWidth >= ScreenSizes.smallDevices) {
          return const SSkillsScreen();
        }
        return const ESSkillsScreen();
      }
    }));
  }
}
