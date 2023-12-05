import '../edu_kehamilan/edu_kehamilan6.dart';
import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/list_deskripsi.dart';
import '../../../widgets/widgets_edu_ibuHamil/subtitle_biru.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class EduKehamilan5 extends StatelessWidget {
  const EduKehamilan5({super.key});

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
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SubTitleBiru(
                          angka: '4.',
                          judul:
                              'Boleh melakukan hubungan suami istri selama hamil. Tanyakan ke petugas kesehatan cara yang aman.',
                          padding: 5,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SubTitleBiru(
                          angka: '5.',
                          judul: 'AKTIVITAS FISIK',
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: '1',
                          deskripsi:
                              "Ibu hamil yang sehat dapat melakukan aktivitas fisik seharihari dengan memperhatikan kondisi ibu dan keamanan janin yang dikandungnya.",
                          padding: 15,
                        ),
                        ListDeskripsiWidget(
                          nomor: '2',
                          deskripsi:
                              "Suami membantu istrinya yang sedang hamil untuk melakukan pekerjaan sehari-hari.",
                          padding: 15,
                        ),
                        ListDeskripsiWidget(
                          nomor: '3',
                          deskripsi:
                              "Ikuti senam ibu hamil sesuai dengan anjuran petugas kesehatan.",
                          padding: 15,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/imgibuhamil/mencuci.png',
                    width: 150,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Image.asset(
                  'assets/imgibuhamil/larangan.png',
                  width: 500,
                ),
              ),
            ),
            Center(
              child: Container(
                width: size * 0.8,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: hijauMuda,
                ),
                child: Center(
                  child: Text(
                    'Jangan lupa selalu konsul yaa :)',
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
          Positioned(
            bottom: 20,
            right: 30,
            child: FloatingActionButton(
              backgroundColor: orangeTua,
              heroTag: 'next',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EduKehamilan6(),
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
