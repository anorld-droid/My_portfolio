import 'package:flutter/material.dart';

class MHomeScreen extends StatefulWidget {
  static const routeName = "views/HomeScreen";
  const MHomeScreen({Key? key}) : super(key: key);

  @override
  State<MHomeScreen> createState() => _MHomeScreenState();
}

class _MHomeScreenState extends State<MHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return const Scaffold(
      body: Center(
        child: Text("Medium Screen"),
      ),
    );
  }
}

class _MyController {
  _MHomeScreenState state;
  _MyController(this.state);
}
