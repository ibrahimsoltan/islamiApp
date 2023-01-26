import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class HadeesProvider extends ChangeNotifier {
  List<String> lines = [];
  void loadFile(int index) async{
    String ahadees = await rootBundle.loadString("assets/files/ahadees.txt");
    lines = ahadees.trim().split("#\r\n");
    print(lines.elementAt(0));
    notifyListeners();
  }

}