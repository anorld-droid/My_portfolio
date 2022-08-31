import 'package:flutter/material.dart';

class SHomeScreen extends StatefulWidget {
  const SHomeScreen({Key? key}) : super(key: key);

  @override
  State<SHomeScreen> createState() => _SHomeScreenState();
}

class _SHomeScreenState extends State<SHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return const Scaffold(
      body: Center(
        child: Text("Small Screen"),
      ),
    );
  }
}

class _MyController {
  _SHomeScreenState state;
  _MyController(this.state);
}
