import 'package:yess_nutrition/common/styles/color_scheme.dart';
import 'package:yess_nutrition/common/styles/text_style.dart';
import 'package:flutter/material.dart';

class BoxOrange extends StatelessWidget {
  final String deskripsi;
  final String list;
  const BoxOrange({
    required this.deskripsi,
    required this.list,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
      width: width * 0.8,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: orangeTua,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            deskripsi,
            style: deskripsiHitamTextStyle,
          ),
          const Text('Selamat berkonsultasi :)'),
        ],
      ),
    );
  }
}
