import 'package:flutter/material.dart';

class SProjectsScreen extends StatefulWidget {
  const SProjectsScreen({Key? key}) : super(key: key);

  @override
  State<SProjectsScreen> createState() => _SProjectsScreenState();
}

class _SProjectsScreenState extends State<SProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Text("$width, Small Screen"),
      ),
    );
  }
}
