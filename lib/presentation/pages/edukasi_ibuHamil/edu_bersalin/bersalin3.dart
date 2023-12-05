import 'package:flutter/material.dart';
import 'package:yess_nutrition/common/styles/color_scheme.dart';
import 'package:yess_nutrition/common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/subtitle_biru.dart';
import '../../../widgets/widgets_edu_ibuHamil/peringatan_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Bersalin3 extends StatelessWidget {
  const Bersalin3({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
          children: [
            const Center(
                child: PeringatanWidget(text: "TANDA BAHAYA PADA PERSALINAN")),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/pendarahan.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const SubTitleBiru(
                          angka: "",
                          judul: "Pendarahan lewat jalan lahir",
                          padding: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/kejang.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const SubTitleBiru(
                          angka: "",
                          judul: "Pendarahan lewat jalan lahir",
                          padding: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/ketuban.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const SubTitleBiru(
                          angka: "",
                          judul: "Air ketuban keruh dan berbau",
                          padding: 15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/keluar_tangan.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const SubTitleBiru(
                          angka: "",
                          judul:
                              "Tali pusar atau tangan bayi keluar dari jalan lahir",
                          padding: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/mengejan.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const SubTitleBiru(
                          angka: "",
                          judul: "Ibu tidak kuat mengejan",
                          padding: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/gelisah.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const SubTitleBiru(
                          angka: "",
                          judul:
                              "Ibu gelisah atau mengalami kesakitan yang hebat",
                          padding: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                color: merahBox,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: width * 0.8,
                child: Center(
                    child: Text(
                  'Jika muncul salah satu tanda di atas SEGERA RUJUK IBU KE RUMAH SAKIT',
                  style: GoogleFonts.poppins(
                    color: putih,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                )),
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
          /**Positioned(
            bottom: 20,
            right: 30,
            child: FloatingActionButton(
              backgroundColor: orangeTua,
              heroTag: 'next',
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const DaftarMenu(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.home,
                size: 40,
              ),
            ),
          ),**/
          // Add more floating buttons if you want
          // There is no limit
        ],
      ),
    );
  }
}
