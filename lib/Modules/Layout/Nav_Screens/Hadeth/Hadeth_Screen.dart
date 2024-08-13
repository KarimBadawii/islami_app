import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Hadeth/hadeth_title.dart';

import '../../../../Modules/Core/colors/app_colors.dart';
import '../../../core/theme/ui_utils.dart';

class HadethScreen extends StatefulWidget {
  HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<Hadeth> alHadeth = [];

  @override
  void initState() {
    super.initState();
    readHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appTranslate(context).hadeth,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        // centerTitle: true,
        // elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Image.asset("assets/images/hadith_header (2).png"),
          Container(
            width: double.infinity,
            height: 2,
            color: AppColors.lightPrim,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(appTranslate(context).hadeth,
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
            child: alHadeth.isNotEmpty
                ? ListView.separated(
                    itemBuilder: (context, index) {
                      return HadethTitle(alHadeth[index]);
                    },
                    itemCount: alHadeth.length,
                    separatorBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        height: 1.5,
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        color: AppColors.lightPrim,
                      );
                    },
                  )
                : const Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
    );
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString("assets/H_files/ahadeth.txt");
    List<String> seperatedHadeth = fileContent.split("#");

    for (int i = 0; i < seperatedHadeth.length; i++) {
      String singleHadeth = seperatedHadeth[i];
      List<String> lines = singleHadeth.trim().split("\n");
      String hadethTitle = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth h = Hadeth(hadethTitle, content);
      alHadeth.add(h);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
