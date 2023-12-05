import 'package:yess_nutrition/common/styles/text_style.dart';
import 'package:flutter/material.dart';

class PeringatanWidget extends StatelessWidget {
  final String text;
  const PeringatanWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(
        text,
        style: peringatanMerahTextStyle,
      ),
    );
  }
}
