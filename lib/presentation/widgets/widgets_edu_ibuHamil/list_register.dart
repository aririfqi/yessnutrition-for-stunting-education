import 'package:flutter/material.dart';
import 'package:yess_nutrition/presentation/widgets/widgets_edu_ibuHamil/deskripsi_widget.dart';

class ListRegistrasi extends StatelessWidget {
  final String jawaban;
  final String pertanyaan;
  const ListRegistrasi({
    required this.pertanyaan,
    required this.jawaban,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        DeskripsiWidget(
          deskripsi: pertanyaan,
          padding: 15,
        ),
        const DeskripsiWidget(
          deskripsi: ':',
          padding: 0,
        ),
        Flexible(
          child: DeskripsiWidget(
            deskripsi: jawaban,
            padding: 15,
          ),
        ),
      ],
    );
  }
}
