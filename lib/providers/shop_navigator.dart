import 'package:flutter/material.dart';

class ShopNavigator with ChangeNotifier{
  int selectedIndex = 0;

  int get getSelectIndex => selectedIndex;

  void onTapItem(int index){
    selectedIndex = index;
    notifyListeners();
  }
}