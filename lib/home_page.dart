import 'package:flutter/material.dart';
import 'package:pageview/pages/page_1.dart';
import 'package:pageview/pages/page_2.dart';
import 'package:pageview/pages/page_3.dart';
import 'package:pageview/pages/page_4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      backgroundColor: Color.fromARGB(255, 66, 72, 62),
      body: Center(
        child: Column(
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

            /* Indicators */

            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  width: 32,
                  height: 12,
                  color: const Color.fromARGB(255, 87, 105, 73),
                  rotationAngle: 180,
                  verticalOffset: 10,
                  borderRadius: BorderRadius.circular(24),
                  dotBorder: const DotBorder(
                    padding: 2,
                    width: 2,
                    color: Color.fromARGB(255, 138, 185, 136),
                  ),
                ),
                activeDotDecoration: DotDecoration(
                  width: 24,
                  height: 12,
                  color: Colors.green,
                  dotBorder: const DotBorder(
                    padding: 2,
                    width: 2,
                    color: Color.fromARGB(255, 113, 99, 73),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                spacing: 6.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
