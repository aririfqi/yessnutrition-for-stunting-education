import '../edu_kehamilan/edu_kehamilan4.dart';
import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/box_green.dart';
import '../../../widgets/widgets_edu_ibuHamil/deskripsi_widget.dart';
import '../../../widgets/widgets_edu_ibuHamil/sub_judul_besar.dart';
import '../../../widgets/widgets_edu_ibuHamil/subtitle_biru.dart';
import 'package:flutter/material.dart';

class EduKehamilan3 extends StatelessWidget {
  const EduKehamilan3({super.key});

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
                            angka: '9.',
                            judul: 'Konseling penjelasan',
                            padding: 5),
                        DeskripsiWidget(
                            deskripsi:
                                'Tenaga kesehatan memberi penjelasan mengenai perawatan kehamilan, pencegahan kelainan bawaan, persalinan dan inisiasi menyusu dini (IMD), nifas, perawatan bayi baru lahir, ASI eksklusif, Keluarga Berencana dan imunisasi pada bayi. Penjelasan ini diberikan secara bertahap pada saat kunjungan ibu hamil.',
                            padding: 15),
                        SubTitleBiru(
                            angka: '10.',
                            judul: 'Tata laksana atau mendapatkan pengobatan',
                            padding: 5),
                        DeskripsiWidget(
                            deskripsi:
                                'jika ibu mempunyai masalah kesehatan pada saat hamil.',
                            padding: 15),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/imgibuhamil/periksa_kehamilan4.png',
                    width: 150,
                  ),
                ],
              ),
            ),
            Center(
              child: BoxGreen(
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    SubTitleBiru(
                      angka: '',
                      judul: "Ikuti kelas ibu",
                      padding: 15,
                    ),
                    SubJudulBesar(
                      judul: "1. Kelas Ibu Hamil",
                    ),
                    DeskripsiWidget(
                        deskripsi:
                            "Di kelas ibu hamil, ibu mendapatkan informasi dan saling bertukar informasi mengenai ke hamilan, persalinan, nifas serta perawatan bayi baru lahir. ikuti kelas ibu hamil paling sedikit 4 kali pertemuan, sebaiknya 1 kali pertemuan dihadiri bersama suami/keluarga.",
                        padding: 15),
                    SubJudulBesar(
                      judul: "2. Kelas Ibu Balita",
                    ),
                    DeskripsiWidget(
                        deskripsi:
                            "Di kelas ibu balita, ibu mendapatkan informasi dan saling bertukar informasi mengenai tumbuh kembang, imunisasi, gizi, perawatan bayi dan balita serta penyakit yang sering pada bayi dan balita.",
                        padding: 15),
                    Padding(
                      padding: EdgeInsets.only(top: 25, bottom: 25),
                      child: Center(
                        child: SubTitleBiru(
                            angka: '',
                            judul: 'Tata laksana atau mendapatkan pengobatan',
                            padding: 20),
                      ),
                    ),
                  ],
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
                    builder: (context) => const EduKehamilan4(),
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
