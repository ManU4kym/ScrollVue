import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 95, 91, 102)),
      child: const Center(child: Text('Page three')),
    );
  }
}
