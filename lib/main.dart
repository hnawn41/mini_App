import 'package:flutter/material.dart';
import 'package:homework/get_started_page.dart';
import 'package:homework/home_page.dart';

void main() {
  runApp(MiniApp());
}

class MiniApp extends StatelessWidget {
  const MiniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => GetStartedPage(),
        'home': (context) => HomePage()
      },
    );
  }
}
