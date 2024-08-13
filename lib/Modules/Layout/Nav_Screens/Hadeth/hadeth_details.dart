import 'package:flutter/material.dart';
import 'package:islamiapp/Modules/Core/Widgets/Bg_widget.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Hadeth/Hadeth_Screen.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return BgWidget(
        child: Scaffold(
      appBar: AppBar(
        title:
            Text(hadeth.title, style: Theme.of(context).textTheme.titleSmall),
      ),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 25,
        margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(hadeth.content,
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.bodySmall),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
