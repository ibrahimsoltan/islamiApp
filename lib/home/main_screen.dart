

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/hadees/ahadeesScreen.dart';
import 'package:islami_app/home/tabs/quran/quranScreen.dart';
import 'package:islami_app/home/tabs/radioScreen.dart';
import 'package:islami_app/home/tabs/sebha/sebhaScreen.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
   return Stack(
      children: [
        Image.asset("assets/images/background.png", width: double.infinity,fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            title: Text("Islami",style: Theme.of(context).textTheme.headline1, ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting, // makes the title under the icon displayed only when clicked
              currentIndex: currentIndex,
              onTap: (value) {
                currentIndex = value;
                setState(() {
                });
              },
              items:  [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png')), label: " Quran" ,backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')), label: "Radio " , backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),  label: "Sebha", backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/mos7af.png')), label: "Hadees ", backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor ),

          ],
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
          body: tabs[currentIndex] ,
        ),
      ],
    );
  }
  List<Widget>tabs=[
    QuranScreen(),
    RadioScreen(),
    SebhaScreen(),
    AhadeesScreen(),
  ];
}
