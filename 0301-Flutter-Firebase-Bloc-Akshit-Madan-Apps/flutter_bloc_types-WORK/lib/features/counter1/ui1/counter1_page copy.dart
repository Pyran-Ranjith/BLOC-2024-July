import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_types/features/counter/bloc/counter_bloc.dart';
// import 'package:flutter_bloc_types/features/counter/bloc/counter_bloc.dart';
import 'package:flutter_bloc_types/features/counter1/bloc/counter1_bloc.dart';

class Counter1Page extends StatefulWidget {
  const Counter1Page({super.key});

  @override
  State<Counter1Page> createState() => _Counter1PageState();
}

class _Counter1PageState extends State<Counter1Page> {
  Counter1Bloc counter1Bloc = Counter1Bloc();

  @override
  void initState() {
    counter1Bloc.add(Counter1Incrementevent());
    super.initState();
  }

  int val = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("0301: Counter1 Page")),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              counter1Bloc.add(Counter1Incrementevent());
            }),
        body: 

      /* 2. When buton pressed CONSUME the page*/
        // BlocConsumer<Counter1Bloc, Counter1State>(
        //     bloc: counter1Bloc,
        //     listenWhen: (previous, current) => current is CounterActionState,
        //     buildWhen: (previous, current) => current is! CounterActionState,
        //     listener: (context, state) {
        //       if (state is CounterShowSnackbarActionState) {
        //         ScaffoldMessenger.of(context)
        //             .showSnackBar(SnackBar(content: Text("Snackbar")));
        //       }
        //     },
        //     builder: (context, state) {
        //       switch (state.runtimeType) {
        //         case Counter1IncrementState:
        //           final successState = state as Counter1IncrementState;
        //           return Center(
        //             child: Container(
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Text(
        //                     successState.val.toString(),
        //                     style: const TextStyle(fontSize: 60),
        //                   ),
        //                   ElevatedButton(
        //                       onPressed: () {
        //                         // counter1Bloc.add(CounterShowSnackbarEvent());
        //                       },
        //                       child: Text('Snackbar'))
        //                 ],
        //               ),
        //             ),
        //           );

        //         default:
        //           return const Center(
        //             child: Text("Not Found"),
        //           );
        //       }
        //     }
        //     )

          /* 1. When buton pressed increase the counter by 1 and REBUILD the page*/
        BlocBuilder<Counter1Bloc, Counter1State>(
          bloc: counter1Bloc,
          builder: (context, state) {
            switch (state.runtimeType) {
              case Counter1IncrementState:
                final successState = state as Counter1IncrementState;
        return Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  successState.val.toString(),
                  style: const TextStyle(fontSize: 60),
                )
              ],
            ),
          ),
        );

              default:
                return const Center(
                  child: Text("Not Found"),
                );
            }
          },
        ),

        // BlocListener<CounterBloc, CounterState>(
        //   bloc: counterBloc,
        //   listener: (context, state) {
        // if (state is CounterShowSnackbarActionState) {
        //   ScaffoldMessenger.of(context)
        //       .showSnackBar(SnackBar(content: Text("Snackbar")));
        //     } else if (state is CounterIncrementActionState) {
        //       setState(() {
        //         val = val + 1;
        //       });
        //     }
        //   },
        //   child: Center(
        //     child: Container(
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text(
        //             val.toString(),
        //             style: const TextStyle(fontSize: 60),
        //           ),
        // const SizedBox(height: 20),
        // ElevatedButton(
        //     onPressed: () {
        //       counterBloc.add(CounterIncrementevent());
        //     },
        //     child: Text('Add')),
        // ElevatedButton(
        //     onPressed: () {
        //       counterBloc.add(CounterShowSnackbarEvent());
        //     },
        //     child: Text('Snackbar'))
        //         ],
        //       ),
        //     ),
        //   ),
        // )



        );
  }
}
