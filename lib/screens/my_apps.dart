import 'package:flutter/material.dart';

import '../components/counter_value.dart';
import '../components/increment_counter_value.dart';



class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
              children: <Widget>[
                Text('Counter Value'),
                CounterValue(),
                IncrementCounterButton(),
              ],
            )
        ),
      ),
    );
  }
}