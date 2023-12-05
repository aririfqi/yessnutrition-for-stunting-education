// ignore_for_file: unused_import

import '../../../../common/utils/routes.dart';
import 'bersalin2.dart';
import 'package:flutter/material.dart';
import 'package:yess_nutrition/common/styles/color_scheme.dart';
import 'package:yess_nutrition/common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/judul_besar.dart';
import 'package:google_fonts/google_fonts.dart';

class Bersalin1 extends StatelessWidget {
  const Bersalin1({super.key});

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
                'Ibu Bersalin',
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
            const JudulBesar(judul: "TANDA AWAL PERSALINAN"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/imgibuhamil/mulas.png',
                  width: 150,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/imgibuhamil/keluar_lendir.png',
                  width: 150,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Image.asset(
                  'assets/imgibuhamil/salaman.png',
                  width: 400,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 20,
            right: 30,
            child: FloatingActionButton(
              backgroundColor: orangeTua,
              heroTag: 'next',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Bersalin2(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.arrow_right,
                size: 40,
              ),
            ),
          ),
          // Add more floating buttons if you want
          // There is no limit
        ],
      ),
    );
  }
}
