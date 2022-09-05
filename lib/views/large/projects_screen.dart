import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LProjectsScreen extends StatefulWidget {
  const LProjectsScreen({Key? key}) : super(key: key);

  @override
  State<LProjectsScreen> createState() => _LProjectsScreenState();
}

class _LProjectsScreenState extends State<LProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: Row(children: const [
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
                Text('hi'),
              ]),
            )));
  }
}
