import 'package:flutter/material.dart';
import 'package:test_two/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // set the title of the app to the text 'Register App'
      title: 'Register App',
      home: RegisterPage(),
    );
  }
}
