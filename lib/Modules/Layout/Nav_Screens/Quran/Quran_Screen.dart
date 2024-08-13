import 'package:flutter/material.dart';
import 'package:islamiapp/Modules/Core/colors/app_colors.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Quran/sura_title.dart';

import '../../../core/theme/ui_utils.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appTranslate(context).islami,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        // centerTitle: true,
        // elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Image.asset("assets/images/qur2an_screen_logo.png"),
          Container(
            width: double.infinity,
            height: 2,
            color: AppColors.lightPrim,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 190,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(appTranslate(context).aya,
                    style: Theme.of(context).textTheme.titleSmall),
              ),
              Container(
                height: 30,
                width: 3,
                color: AppColors.lightPrim,
              ),
              Container(
                width: 190,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(appTranslate(context).suraName,
                    style: Theme.of(context).textTheme.titleSmall),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: AppColors.lightPrim,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return SuraTitle(suraName[index], index);
              },
              itemCount: suraName.length,
              separatorBuilder: (context, index) {
                return Container(
                  width: 50,
                  height: 1.5,
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  color: AppColors.lightPrim,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
