import 'package:bitaqwa_app/screens/doa/home_doa.dart';
import 'package:bitaqwa_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeDoa(),
    );
  }
}
