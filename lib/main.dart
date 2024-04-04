import 'package:flutter/material.dart';

import 'Auth/login.dart';
import 'Auth/signUp.dart';
import 'screen/detailScreen.dart';
import 'screen/profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KIKI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DetailedScreen(),
    );
  }
}
