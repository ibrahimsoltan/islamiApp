import 'package:flutter/material.dart';
import 'package:islami_app/home/main_screen.dart';
import 'package:islami_app/home/tabs/hadees/hadees_view.dart';
import 'package:islami_app/home/tabs/quran/surah_view.dart';
import 'package:islami_app/mytheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes:{
        HomeScreen.routeName : (context) => HomeScreen(),
        SurahView.routeName :(context)=>SurahView(),
        HadeesView.routeName : (context) => HadeesView(),
      },
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light ,
    );
  }
}
