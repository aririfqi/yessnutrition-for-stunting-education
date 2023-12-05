import '../edu_kehamilan/edu_kehamilan3.dart';
import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/deskripsi_widget.dart';
import '../../../widgets/widgets_edu_ibuHamil/sub_judul_besar.dart';
import '../../../widgets/widgets_edu_ibuHamil/subtitle_biru.dart';
import 'package:flutter/material.dart';

class EduKehamilan2 extends StatelessWidget {
  const EduKehamilan2({super.key});

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
                            angka: '5.',
                            judul: 'Penentuan letak janin',
                            padding: 5),
                        DeskripsiWidget(
                            deskripsi:
                                'apabila trimester III bagian bawah janin bukan kepala atau kepala belum masuk panggul, kemungkinan ada kelainan letak atau ada masalah lain. Bila denyut jantung janin kurang dari 120 kali/menit atau lebih dari 160 kali/menit menunjukkan ada tanda GAWAT JANIN,SEGERA RUJUK.',
                            padding: 15),
                        SubTitleBiru(
                            angka: '2.',
                            judul: 'Pengukuran tekanan darah (tensi)',
                            padding: 5),
                        DeskripsiWidget(
                            deskripsi:
                                'oleh petugas untuk selanjutnya bilamana diperlukan mendapatkan suntikan tetanus toksoid sesuai anjuran petugas kesehatan untuk mencegah tetanus pada Ibu dan Bayi.',
                            padding: 15),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/imgibuhamil/periksa_kehamilan2.png',
                    width: 150,
                  ),
                ],
              ),
            ),
            const SubJudulBesar(
              judul:
                  "Tabel rentang waktu pemberian imunisasi TT dan lama perlindungannya :",
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/imgibuhamil/tabel_imunisasi.png',
                  width: 360,
                ),
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
                        SubTitleBiru(
                            angka: '7.',
                            judul: 'Pemberian tablet tambah darah',
                            padding: 5),
                        DeskripsiWidget(
                            deskripsi:
                                'ibu hamil sejak awal kehamilan	minum	1	tablet tambah darah setiap hari  minimal selama 90 hari. Tablet	 tambah	 darah	 diminum pada malam hari untuk mengurangi rasa mual.',
                            padding: 15),
                        SubTitleBiru(
                            angka: '2.',
                            judul: 'Pengukuran tekanan darah (tensi)',
                            padding: 5),
                        DeskripsiWidget(
                            deskripsi:
                                'oleh petugas untuk selanjutnya bilamana diperlukan mendapatkan suntikan tetanus toksoid sesuai anjuran petugas kesehatan untuk mencegah tetanus pada Ibu dan Bayi.',
                            padding: 15),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/imgibuhamil/periksa_kehamilan3.png',
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
                    builder: (context) => const EduKehamilan3(),
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
