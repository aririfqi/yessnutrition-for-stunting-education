import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/widgets_edu_ibuHamil/judul_besar.dart';
import '../../../widgets/widgets_edu_ibuHamil/subtitle_biru.dart';
import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';
import '../edu_nifas/edu_nifas3.dart';

class EduNifas2 extends StatelessWidget {
  const EduNifas2({super.key});

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
                'Ibu Nifas',
                style: judulAppBAr,
              ),
            ),
          ),
        ],
        centerTitle: false,
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
                child: JudulBesar(
                    judul:
                        "Hal-hal yang harus dihindari oleh ibu bersalin dan selama nifas")),
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
                          'assets/imgibuhamil/membuang.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const SubTitleBiru(
                          angka: "",
                          judul:
                              "Membuang ASI yang pertama keluar (kolostrum) karena sangat berguna untuk kekebalan tubuh anak",
                          padding: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/mengikat.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const SubTitleBiru(
                          angka: "",
                          judul: "Mengikat perut terlalu kencang",
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
                          'assets/imgibuhamil/membersihkan.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const SubTitleBiru(
                          angka: "",
                          judul:
                              "Membersihkan payudara dengan alkohol/povidon iodine obat merah atau sabun karena bisa terminum oleh bayi",
                          padding: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/menempel.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const SubTitleBiru(
                          angka: "",
                          judul:
                              "Menempelkan daun daunan pada kemaluan karena akan menimbulkan infeksi",
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
                color: hijauMuda,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: width * 0.8,
                child: Center(
                    child: Text(
                  'Tanyakan pada dokter, bidan dan perawat mengenai kondisi kesehatan ibu nifas',
                  style: GoogleFonts.poppins(
                    color: Colors.black87,
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
          Positioned(
            bottom: 20,
            right: 30,
            child: FloatingActionButton(
              backgroundColor: orangeTua,
              heroTag: 'next',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EduNifas3(),
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
