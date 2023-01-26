import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/hadees/hadees_view.dart';

class AhadeesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset("assets/images/hadeesPhoto.png"),
        Text(
          "Ahadees",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 4,
          indent: 20,
          endIndent: 20,
        ),
        Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                  return const Divider(
                endIndent: 25,
                indent: 25,
                thickness: 1.5,
                    );
                },
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadeesView.routeName,arguments: index );
                },
                child: Text(
                  "Hadees No" + "${index + 1}",
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.center,
                ));
          },
        ))
      ]),
    ));
  }
}
