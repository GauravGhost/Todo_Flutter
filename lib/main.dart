import 'package:flutter/material.dart';
import 'package:todo/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          primaryColor: Colors.yellow,
          iconTheme: const IconThemeData(color: Colors.black),
          colorScheme: const ColorScheme.light(
              primary: Colors.yellow,
              secondary: Colors.yellowAccent,
              background: Colors.yellow)),
    );
  }
}
