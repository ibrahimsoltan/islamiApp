import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/mytheme.dart';
import 'package:islami_app/providers/surahViewProvider.dart';
import 'package:provider/provider.dart';

class SurahView extends StatelessWidget {
  static const String routeName = 'surahDetails';
  late SurahDetailsArgs surahDetailsArgs;

  @override
  Widget build(BuildContext context) {
    surahDetailsArgs =
        ModalRoute.of(context)!.settings.arguments as SurahDetailsArgs;
    return ChangeNotifierProvider(
        create: (context) =>
            SurahViewProvider()..loadFile(surahDetailsArgs.index),
        builder: (context, child) {
          var provider = Provider.of<SurahViewProvider>(context);

          return Stack(children: [
            Image.asset(
              "assets/images/background.png",
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  surahDetailsArgs.name,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),

              body: provider.verses.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      separatorBuilder: (context, index) =>  Divider(
                          color: Theme.of(context).dividerColor,
                          thickness: 1.5,
                          indent: 25,
                          endIndent: 25),
                      itemCount: provider.verses.length - 2,
                      itemBuilder: (context, index) {
                        return Text(
                          provider.verses[index],
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        );
                      }),
            ),
          ]);
        }
        );
  }
}

class SurahDetailsArgs {
  String name;
  int index;
  SurahDetailsArgs(this.name, this.index);
}
