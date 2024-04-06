import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pageview/pages/page_1.dart';
import 'package:pageview/pages/page_2.dart';
import 'package:pageview/pages/page_3.dart';
import 'package:pageview/pages/page_4.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 87, 81, 105),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            width: 300,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
