import 'package:flutter/cupertino.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  set count(int value) {
    _count = value;
    notifyListeners();
  }
  void increment() => count ++;
}