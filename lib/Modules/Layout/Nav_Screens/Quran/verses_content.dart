import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  int index;
  String content;

  VerseContent(this.content, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text('$content {${index + 1}}',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.bodySmall),
      ),
    );
  }
}
