import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/judul_besar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EduKehamilan8 extends StatelessWidget {
  const EduKehamilan8({super.key});

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
            const JudulBesar(judul: "TANDA BAHAYA PADA KEHAMILAN"),
            Center(
              child: Container(
                color: merahBox,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: size * 0.8,
                child: Center(
                    child: Text(
                  'Segera bawa ibu hamil ke puskesmas, rumah sakit, dokter dan bidan bila dijumpai keluhan dan tanda-tanda di bawah ini',
                  style: GoogleFonts.poppins(
                    color: putih,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Image.asset(
                  'assets/imgibuhamil/tanda_bahaya.png',
                  width: 300,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                width: size * 0.8,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: hijauMuda,
                ),
                child: Center(
                  child: Text(
                    'Rajin ikut kelas Ibu Hamil yaa :)',
                    style: judulHitamPudarTextStyle,
                    textAlign: TextAlign.center,
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
