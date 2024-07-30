import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_types/features/counter2/bloc/counter2_bloc.dart';

class Counter2Page extends StatefulWidget {
  const Counter2Page({super.key});

  @override
  State<Counter2Page> createState() => _Counter2PageState();
}

class _Counter2PageState extends State<Counter2Page> {
  Counter2Bloc counter2bloc = Counter2Bloc();  //create instence of bloc
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(child: Text("0301: Counter-2lu Page")),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      body: BlocBuilder<Counter2Bloc, Counter2State>(
        bloc: counter2bloc, //use of created block instence
        builder: (context, state) {
          return Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
