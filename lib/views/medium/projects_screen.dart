import 'package:flutter/material.dart';

class MProjectsScreen extends StatefulWidget {
  const MProjectsScreen({Key? key}) : super(key: key);

  @override
  State<MProjectsScreen> createState() => _MProjectsScreenState();
}

class _MProjectsScreenState extends State<MProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Text("$width, Medium Screen"),
      ),
    );
  }
}
