import 'package:flutter/material.dart';
import 'package:movieapp/Defalut_Controller.dart';
import 'package:movieapp/Screen/Home.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xff121212)),
          scaffoldBackgroundColor: Color(0xff121212),
          useMaterial3: true,
          textTheme: TextTheme(
              labelLarge:
                  TextStyle(fontFamily: "a", fontWeight: FontWeight.bold))),
      home: Defalut_Controller(),
    );
  }
}
