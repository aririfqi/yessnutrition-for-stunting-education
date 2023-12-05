import '../edu_kehamilan/edu_kehamilan7.dart';
import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';
import 'package:flutter/material.dart';

class EduKehamilan6 extends StatelessWidget {
  const EduKehamilan6({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
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
                'Ibu Hamil',
                style: judulAppBAr,
              ),
            ),
          ),
        ],
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Image.asset(
                  'assets/imgibuhamil/pola_makan.png',
                  width: 300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Image.asset(
                  'assets/imgibuhamil/sayur.png',
                  width: 500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Image.asset(
                  'assets/imgibuhamil/pola_makan2.png',
                  width: 350,
                ),
              ),
            ),
            Center(
              child: Container(
                width: size * 0.8,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: hijauMuda,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Tanyakan kepada Bidan/Perawat/Dokter untuk penjelasan lebih lanjut terkait kehamilan',
                      style: judulHitamPudarTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
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
            left: 30,
            bottom: 20,
            child: FloatingActionButton(
              backgroundColor: orangeTua,
              heroTag: 'back',
              onPressed: () {
                Navigator.pop(context);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.arrow_left,
                size: 40,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 30,
            child: FloatingActionButton(
              backgroundColor: orangeTua,
              heroTag: 'next',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EduKehamilan7(),
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
