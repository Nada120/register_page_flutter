import 'package:flutter/material.dart';
import 'package:test_two/comp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 197, 140),
      body: Column(
        children: const [
          MyClipperComp(text: 'Home',),
          Text(
            'Home Page',
             style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Colors.white,
             ),
          ),
        ],
      ),
    );
  }
}
