
import 'package:flutter/material.dart';

class NavigatorProvider with ChangeNotifier{
  int _currontIndex=0;

  int get currontIndex => _currontIndex;

  set currontIndex(int value) {
    _currontIndex = value;
    notifyListeners();
  }
}