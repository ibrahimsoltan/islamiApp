import 'package:flutter/cupertino.dart';

class SebhaProvider extends ChangeNotifier{
    int counter = 0;
    String word = "سبحان الله";
    void increaseCounter(){
      counter++;
      if(counter > 33)
        {
          word = "الحمد لله";
        }
      if(counter > 66)
        {
          word = "الله اكبر";
        }
      if(counter > 99)
        {
          counter = 0;
          word = "سبحان الله";
        }

      print(word);
      notifyListeners();
    }

}