import 'package:flutter/material.dart';
import 'package:login_s_m/splashScreen/spalsh_screen.dart';

import 'data_pages/data_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
