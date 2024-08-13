import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Modules/Core/Widgets/Bg_widget.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Quran/verses_content.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura details";

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    if (verses.isEmpty) {
      readFileData(args.suraIndex);
    }
    return BgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraTitle),
        ),
        body: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 25,
          margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: verses.isNotEmpty
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return VerseContent(verses[index], index);
                  },
                  itemCount: verses.length,
                )
              : Center(
                  child: CircularProgressIndicator(
                  color: Colors.black,
                )),
        ),
      ),
    );
  }

  void readFileData(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString("assets/Q_file/${fileIndex + 1}.txt");
    List<String> lines = fileContent.trim().split("\n");
    setState(() {
      verses = lines;
    });
  }
}

class SuraDetailsArg {
  String suraTitle;
  int suraIndex;

  SuraDetailsArg(
    this.suraTitle,
    this.suraIndex,
  );
}
