import 'package:flutter/material.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Quran/sura_deatils.dart';

class SuraTitle extends StatelessWidget {
  String title;
  int index;

  SuraTitle(this.title, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailsArg(title, index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 65.0),
            child: Text("286",
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.bodyMedium),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 55.0),
            child: Text(title,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}
