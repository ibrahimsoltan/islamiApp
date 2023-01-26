import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quran/surah_name_item.dart';
import 'package:islami_app/home/tabs/quran/surah_view.dart';
import 'package:islami_app/mytheme.dart';

class QuranScreen extends StatelessWidget {
  List<String> surahNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
            Image.asset("assets/images/quranPhoto.png", alignment: Alignment.center,),
            Text("Surah Name", style: Theme.of(context).textTheme.headline2),
          Divider(
              thickness: 5,
              indent: 25,
              endIndent: 25),
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(thickness: 1.5,indent: 25, endIndent: 25,);
                  },
                  itemCount: surahNames.length,
                  itemBuilder: (context,index){
                    return InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, SurahView.routeName,arguments:SurahDetailsArgs(surahNames.elementAt(index), index));
                        },
                        child: SurahNameItem(surahNames.elementAt(index)));
              }),
            )
        ],
      ),
    );
  }
}
