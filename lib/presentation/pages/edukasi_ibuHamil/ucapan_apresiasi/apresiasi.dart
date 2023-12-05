// ignore_for_file: unused_import

import '../../../../common/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:yess_nutrition/common/styles/color_scheme.dart';
import 'package:yess_nutrition/common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/judul_besar.dart';
import 'package:google_fonts/google_fonts.dart';

class Apresiasi extends StatelessWidget {
  const Apresiasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Apresiasi Keluarga Terkasih',
                style: judulAppBAr,
              ),
            ),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JudulBesar(judul: " "),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Image.asset(
                  'assets/imgibuhamil/apresiasi3.png',
                  width: 400,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Image.asset(
                  'assets/imgibuhamil/apresiasi4.png',
                  width: 500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Image.asset(
                  'assets/imgibuhamil/apresiasi5.png',
                  width: 500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
