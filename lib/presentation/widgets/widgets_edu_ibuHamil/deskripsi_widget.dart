import 'package:yess_nutrition/common/styles/text_style.dart';
import 'package:flutter/material.dart';

class DeskripsiWidget extends StatelessWidget {
  final double padding;
  final String deskripsi;
  const DeskripsiWidget({
    required this.deskripsi,
    required this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(padding, 5, padding, 5),
      child: Text(
        deskripsi,
        style: deskripsiHitamTextStyle,
      ),
    );
  }
}
