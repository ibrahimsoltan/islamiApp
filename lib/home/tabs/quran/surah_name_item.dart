import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurahNameItem extends StatelessWidget {
  String surahName;
  SurahNameItem(this.surahName);
  @override
  Widget build(BuildContext context) {
    return Text(surahName,style: Theme.of(context).textTheme.headline3, textAlign: TextAlign.center,);
  }
}
