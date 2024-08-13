import 'package:flutter/material.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Hadeth/Hadeth_Screen.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Hadeth/hadeth_details.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;

  HadethTitle(this.hadeth, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.routeName,
            arguments: hadeth);
      },
      child: Center(
        child: Text(hadeth.title,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
