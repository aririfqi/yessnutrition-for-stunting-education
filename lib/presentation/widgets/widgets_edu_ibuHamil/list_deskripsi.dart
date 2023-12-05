import 'package:yess_nutrition/common/styles/text_style.dart';
import 'package:flutter/material.dart';

class ListDeskripsiWidget extends StatelessWidget {
  final double padding;
  final String nomor;
  final String deskripsi;
  const ListDeskripsiWidget({
    required this.nomor,
    required this.deskripsi,
    required this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(padding, 5, padding, 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nomor,
            style: deskripsiHitamTextStyle,
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            child: Text(
              deskripsi,
              style: deskripsiHitamTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
