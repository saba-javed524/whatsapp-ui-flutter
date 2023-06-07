import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home_screen.dart';
import 'package:whatsapp_ui/pubDevTutorial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: PubDevTutorial(),
    );
  }
}
