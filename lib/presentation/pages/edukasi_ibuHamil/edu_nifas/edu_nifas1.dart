import 'package:flutter/material.dart';
import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/list_deskripsi.dart';
import '../edu_nifas/edu_nifas2.dart';

class EduNifas1 extends StatelessWidget {
  const EduNifas1({super.key});

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
                'Ibu Nifas',
                style: judulAppBAr,
              ),
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        ListDeskripsiWidget(
                          nomor: '1.',
                          deskripsi:
                              "Pelayanan kesehatan ibu nifas oleh bidan dan dokter dilaksanakan minimal 3 kali yaitu:",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Pertama: 6 jam - 3 hari setelah melahirkan.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Kedua: hari ke 4 - 28 hari setelah melahirkan.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Ketiga: hari ke 29 - 42 hari setelah melahirkan.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: '2.',
                          deskripsi: "Pelayanan kesehatan ibu nifas meliputi:",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi: "Menanyakan kondisi ibu nifas secara umum",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Pengukuran tekanan darah, suhu tubuh, pernapasan, dan nadi.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi: "Pemeriksaan lokhia dan perdarahan",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Pemeriksaan kondisi jalan lahir dan tanda infeksi",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Pemeriksaan kontraksi rahim dan tinggi fundus uteri",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Pemeriksaan payudara dan anjuran pemberian ASI Eksklusif",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi: "Pemberian Kapsul Vit. A",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi: "Pelayanan kontrasepsi Pasca Persalinan",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi: "Konseling.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Tatalaksana pada ibu nifas sakit atau ibu nifas dengan komplikasi.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi: "Memberikan nasihat yaitu:",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi: "Konseling.",
                          padding: 5,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/imgibuhamil/periksa_nifas.png',
                    width: 150,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: [
                      Image.asset(
                        'assets/imgibuhamil/turu.png',
                        width: 170,
                      ),
                    ],
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Makan makanan yang beraneka ragam yang mengandung karbohidrat, protein hewani, protein nabati, sayur, dan buah-buahan",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Kebutuhan air minum pada ibu menyusul pada 6 bulan pertama adalah 14 gelas sehari dan pada 6 bulan kedua adalah 12 gelas sehari.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Menjaga kebersihan diri, termasuk kebersihan daerah kemaluan, ganti pembalut sesering mungkin.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Istirahat cukup, saat bayi tidur ibu istirahat",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Bagi ibu yang melahirkan dengan cara operasi caesar maka harus menjaga	kebersihan luka bekas operasi.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Cara menyusui yang benar dan hanya memberi ASI saja selama 6 bulan.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi: "Perawatan bayi yang benar.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Jangan membiarkan bayi menangis terlalu lama, karena akan membuat bayi stress.",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Lakukan stimulasi komunikasi dengan bayi sedini mungkin bersama suami dan keluarga",
                          padding: 5,
                        ),
                        ListDeskripsiWidget(
                          nomor: ' - ',
                          deskripsi:
                              "Untuk berkonsultasi kepada tenaga kesehatan untuk pelayanan KB setelah persalinan. Memberikan nasihat yaitu:",
                          padding: 5,
                        ),
                      ],
                    ),
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
                    builder: (context) => const EduNifas2(),
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
