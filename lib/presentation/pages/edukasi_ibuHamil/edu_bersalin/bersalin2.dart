import 'package:flutter/material.dart';
import 'package:yess_nutrition/common/styles/color_scheme.dart';
import 'package:yess_nutrition/common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/judul_besar.dart';
import '../../../widgets/widgets_edu_ibuHamil/deskripsi_widget.dart';
import 'bersalin3.dart';

class Bersalin2 extends StatelessWidget {
  const Bersalin2({super.key});

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
            const JudulBesar(judul: 'PERIKSA KEHAMILAN'),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        DeskripsiWidget(
                            deskripsi:
                                'Didahului dengan mulas teratur, semakin lama semakin kuat dan sering.',
                            padding: 15),
                        DeskripsiWidget(
                            deskripsi:
                                'Pada kehamilan pertama, bayi biasanya lahir setelah 12 jam sejak mules teratur. Pada kehamilan kedua dan kehamilan berikutnya, biasanya bayi lahir setelah 8 jam sejak mules teratur. Ibu masih boleh berjalan, makan dan minum. Selama proses melahirkan sebaiknya ibu didampingi suami dan keluarga.',
                            padding: 15),
                        DeskripsiWidget(
                            deskripsi:
                                'Jika terasa sakit, tarik nafas panjang lewat hidung, lalu keluarkan lewat mulut.',
                            padding: 15),
                        DeskripsiWidget(
                            deskripsi:
                                'Jika terasa ingin buang air besarsegera beritahu bidan/dokter. Bidan atau dokter akan mengarahkan/ memimpin ibu mengejan sesuai dengan dorongan rasa ingin mengejan yang timbul.',
                            padding: 15),
                        DeskripsiWidget(
                            deskripsi:
                                'IMD adalah segera meletakkan bayi di dada ibu (ada kontak kulit ibu dan kulit bayi sekurang kurangnya 1 jam untuk memberikan kesempatan kepada bayi menyusu sesegera mungkin).',
                            padding: 15),
                        DeskripsiWidget(
                            deskripsi:
                                'IMD merangsang keluarnya ASI, memberi kekebalan pada bayi serta meningkatkan kekuatan batin antara ibu dan bayinya. IMD mencegah pendarahan pada ibu.',
                            padding: 15),
                        DeskripsiWidget(
                            deskripsi:
                                'Ibu dapat segera dipasang IUD dalam waktu 10 menit setelah plasenta lahir bila ibu dan suami sepakat untuk mengikuti KB dengan metode AKDR (Alat Kontrasepsi Dalam Rahim).',
                            padding: 15),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/imgibuhamil/proses_melahirkan.png',
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
                    builder: (context) => const Bersalin3(),
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
