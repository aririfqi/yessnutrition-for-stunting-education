import 'package:flutter/material.dart';

import '../../../common/styles/text_style.dart';

class SubJudulBesar extends StatelessWidget {
  final String judul;
  const SubJudulBesar({
    required this.judul,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(
        judul,
        style: subjudulHitamPudarTextStyle,
      ),
    );
  }
}
