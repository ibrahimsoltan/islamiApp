import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SurahViewProvider extends ChangeNotifier{
  List<String> verses = [];
  void loadFile(int index)async {
    String surahContent = await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String> lines = surahContent.split("\n");
    verses = lines;
    notifyListeners();
  }

}