import 'package:flutter/material.dart';
// import 'package:flutter_bloc_types/features/counter/ui/counter_page.dart';
// import 'package:flutter_bloc_types/features/counter1/ui1/counter1_page.dart';
import 'package:flutter_bloc_types/features/counter2/ui/counter2_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CounterPage(), //Original
      home: Counter2Page(), // My
    );
  }
}
