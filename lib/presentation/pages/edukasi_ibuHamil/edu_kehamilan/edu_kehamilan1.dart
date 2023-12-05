import 'package:flutter/material.dart';
import '../edu_kehamilan/edu_kehamilan2.dart';
import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/box_orange.dart';
import '../../../widgets/widgets_edu_ibuHamil/deskripsi_widget.dart';
import '../../../widgets/widgets_edu_ibuHamil/judul_besar.dart';
import '../../../widgets/widgets_edu_ibuHamil/sub_judul_besar.dart';
import '../../../widgets/widgets_edu_ibuHamil/subtitle_biru.dart';

class EduKehamilan1 extends StatelessWidget {
  const EduKehamilan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const JudulBesar(judul: 'PERIKSA KEHAMILAN'),
            const Center(
              child: BoxOrange(
                deskripsi:
                    "oleh ibu, suami dan anggota keluarga lain. jangan malu untuk bertanya kepada dokter, bidan dan perawat, petugas kesehatan lain dan kader lain jika ada hal yang tidak dimengerti. ",
                list: 'a',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SubJudulBesar(
                            judul:
                                "Pastikan ibu hamil mendapatkan pelayanan pemeriksaan kehamilan yang meliputi :"),
                        SubTitleBiru(
                            angka: '1.',
                            judul: 'Pengukuran tinggi badan cukup satu kali',
                            padding: 5),
                        DeskripsiWidget(
                            deskripsi:
                                'Bila tinggi badan < 145cm, maka faktor	risiko panggul sempit, kemungkinan sulit	melahirkan secara	normal.',
                            padding: 15),
                        SubTitleBiru(
                            angka: '',
                            judul:
                                'Penimbangan berat badan setiap kali periksa',
                            padding: 15),
                        DeskripsiWidget(
                            deskripsi:
                                'Sejak bulan ke-4 pertambahan	BB paling sedikit 1 kg/bulan.',
                            padding: 15),
                        SubTitleBiru(
                            angka: '2.',
                            judul: 'Pengukuran tekanan darah (tensi)',
                            padding: 5),
                        DeskripsiWidget(
                            deskripsi:
                                'Tekanan darah normal 120/80mmHg.Bila tekanan darah lebih besar atau sama dengan 140/90mmHg, ada faktor risiko hipertensi(tekanan darah tinggi) dalam kehamilan.',
                            padding: 15),
                        SubTitleBiru(
                            angka: '3.',
                            judul: 'Pengukuran Lingkar Lengan Atas (LiLA)',
                            padding: 5),
                        DeskripsiWidget(
                            deskripsi:
                                'Bila < 23,5 cm menunjukkan ibu hamil menderita Kurang Energi Kronis (Ibu hamil KEK) dan beresiko melahirkan Bayi Berat Lahir Rendah (BBLR)',
                            padding: 15),
                        SubTitleBiru(
                            angka: '4.',
                            judul: 'Pengukuran tinggi rahim.',
                            padding: 5),
                        DeskripsiWidget(
                            deskripsi:
                                'Pengukuran tinggi rahim berguna untuk melihat pertumbuhan janin apakah sesuai dengan usia kehamilan.',
                            padding: 15),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/imgibuhamil/periksa_kehamilan.png',
                    width: 150,
                  ),
                ],
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
                    builder: (context) => const EduKehamilan2(),
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
