import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 51, 50, 53)),
      child: const Center(
        child: Text(
          'Page one',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
