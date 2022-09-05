import 'package:flutter/material.dart';

class ESProjectsScreen extends StatefulWidget {
  const ESProjectsScreen({Key? key}) : super(key: key);

  @override
  State<ESProjectsScreen> createState() => _ESProjectsScreenState();
}

class _ESProjectsScreenState extends State<ESProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView(
          controller: controller,
          allowImplicitScrolling: true,
          children: const [
            Text('hi'),
            Text('h2'),
            Text('h3'),
            Text('h4'),
            Text('h5'),
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
    );
  }
}
