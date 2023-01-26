import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/sebha/sebhaProvider.dart';
import 'package:provider/provider.dart';

class SebhaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SebhaProvider(),
        builder: (context, child) {
          var provider = Provider.of<SebhaProvider>(context);

          return SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 200,
                    width: 200,
                    child: InkWell(
                        onTap: () {
                          provider.increaseCounter();
                        },
                        child: Image.asset("assets/images/sebhaPhoto.png"))),
                SizedBox(height: 30),
                Text("Tasbeeh Number", style: Theme.of(context).textTheme.headline2,),
                SizedBox(height: 30),
                Text("${provider.counter}" , style: Theme.of(context).textTheme.headline1,),
                SizedBox(height: 30),
                Text("${provider.word}", style: Theme.of(context).textTheme.headline1,),




              ],
            ),
          );
        });
  }
}
