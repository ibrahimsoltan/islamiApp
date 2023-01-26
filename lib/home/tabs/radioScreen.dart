import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80,),
        Image.asset("assets/images/radioPhoto.png"),
        SizedBox(height: 30,),
        Text("Quran Kareem Station", style: Theme.of(context).textTheme.headline2,),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon:Icon(Icons.skip_previous,size: 50), ),
            IconButton(onPressed: (){}, icon:Icon(Icons.play_arrow,size: 50)),
            IconButton(onPressed: (){}, icon:Icon(Icons.skip_next,size: 50)),


          ],
        ),


      ],
    );
  }
}
