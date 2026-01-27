import 'package:flutter/material.dart';
import 'package:testapp/views/pages/login_view.dart';
import 'package:testapp/views/pages/welcome_view.dart';
import 'package:testapp/views/widgets_tree.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed
        (seedColor: Color.fromARGB(255, 255, 255, 255)),
        brightness: Brightness.light
      ),
      //home:  WidgetsTree(),
      home: WelcomeScreen(),
      );
  }
}


