import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/hadees/ahadeesScreen.dart';
import 'package:islami_app/providers/hadeesProvider.dart';
import 'package:provider/provider.dart';

class HadeesView extends StatelessWidget {
  static const String routeName = "hadeesView";

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)?.settings.arguments as int;

    return ChangeNotifierProvider(

        create: (context)
      => HadeesProvider()..loadFile(index),
        builder: (context, child) {
      var provider2 = Provider.of<HadeesProvider>(context);
      return Stack(
        children: [
          Image.asset(
            "assets/images/background.png",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Hadees No " + "${index + 1}",
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Text(provider2.lines.elementAt(index), style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.right ,
                    ),

                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
