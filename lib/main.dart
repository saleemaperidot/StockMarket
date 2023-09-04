import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingapp/views/onboading.dart';
import 'package:tradingapp/views/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      darkTheme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      themeMode: ThemeMode.system,
      home: const SpashScreen(),
    );
  }
}
