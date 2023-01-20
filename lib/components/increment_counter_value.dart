import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.page.dart';

class IncrementCounterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);
    return ElevatedButton(
      onPressed: counter.increment,
      child: Text('Increment'),
    );
  }
}