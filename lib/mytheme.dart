import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class MyThemeData {

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:
        const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0,iconTheme: IconThemeData(color: colorBlack)),
    textTheme: const TextTheme(
        headline1: TextStyle(
            color: colorBlack, fontSize: 30, fontWeight: FontWeight.bold),
      headline2: TextStyle(color: colorBlack, fontSize: 24 , fontWeight: FontWeight.normal),
      headline3: TextStyle(color: colorBlack , fontSize:  25, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(color: colorBlack, fontSize: 16 , fontWeight: FontWeight.normal),
    ),
    dividerColor: colorGold,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: colorGold,
      selectedItemColor: colorBlack,
      unselectedItemColor: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: colorGold,
    )
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
  );
}
