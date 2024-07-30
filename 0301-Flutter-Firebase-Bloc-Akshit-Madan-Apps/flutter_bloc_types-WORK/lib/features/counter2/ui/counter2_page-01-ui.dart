import 'package:flutter/material.dart';

class Counter2Page extends StatefulWidget {
  const Counter2Page({super.key});

  @override
  State<Counter2Page> createState() => _Counter2PageState();
}

class _Counter2PageState extends State<Counter2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
          title: Center(child: Text("0301: Counter-2lu Page")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){}
        ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('0',
              style: TextStyle(
                fontSize: 60,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}