import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ESHomeScreen extends StatefulWidget {
  const ESHomeScreen({Key? key}) : super(key: key);

  @override
  State<ESHomeScreen> createState() => _ESHomeScreenState();
}

class _ESHomeScreenState extends State<ESHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Extra Small Screen"),
      ),
    );
  }
}

class _MyController {
  _ESHomeScreenState state;
  _MyController(this.state);
}
