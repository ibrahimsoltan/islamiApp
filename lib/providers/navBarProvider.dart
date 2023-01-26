import 'package:flutter/cupertino.dart';

class NavBarProvider extends ChangeNotifier {
  int currentIndex = 0;
  void changeNavBar(int value){
    currentIndex = value;
    notifyListeners();
  }
}
