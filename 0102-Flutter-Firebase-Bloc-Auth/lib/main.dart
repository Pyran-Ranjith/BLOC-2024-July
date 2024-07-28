// ignore_for_file: prefer_const_constructors, dead_code, unused_label

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_modal/auth/login_screen.dart';
// import 'package:flutter_firebase_modal/wrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: const Wrapper(
      //   title: 'flutter_firebase_modal_1',

      // ),
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(title: 'Mmodal_1'),
      // home: const Wrapper(
      //   title: 'flutter_firebase_modal_1',

      // ),
    );
  }
}
