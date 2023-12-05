import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/widgets_edu_ibuHamil/judul_besar.dart';
import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';

class EduNifas5 extends StatelessWidget {
  const EduNifas5({super.key});

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
            const JudulBesar(judul: "TANDA BAHAYA PADA IBU NIFAS"),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                color: merahBox,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: width * 0.8,
                child: Center(
                    child: Text(
                  'Segera bawa ibu nifas ke fasilitas kesehatan (Puskesmas atau Rumah Sakit) bila ditemukan salah satu tanda bahaya di bawah ini',
                  style: GoogleFonts.poppins(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                'assets/imgibuhamil/bahaya_nifas.png',
                width: 350,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                color: hijauMuda,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: width * 0.8,
                child: Center(
                    child: Text(
                  'Tanyakan kepada bidan/perawat/dokter untuk penjelasan lebih lanjut terkait Keluarga Berencana',
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
