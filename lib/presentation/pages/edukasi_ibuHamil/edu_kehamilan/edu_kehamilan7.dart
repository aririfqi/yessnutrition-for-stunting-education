import '../edu_kehamilan/edu_kehamilan8.dart';
import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/judul_besar.dart';
import '../../../widgets/widgets_edu_ibuHamil/list_deskripsi.dart';
import 'package:flutter/material.dart';

class EduKehamilan7 extends StatelessWidget {
  const EduKehamilan7({super.key});

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
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JudulBesar(judul: "PERSIAPAN MELAHIRKAN (BERSALIN)"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/konsultasi.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: Column(
                          children: const <Widget>[
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Tanyakan	kepada bidan dan dokter tanggal perkiraan persalinan.",
                              padding: 25,
                            ),
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Suami atau keluarga mendampingi ibu saat periksa kehamilan.",
                              padding: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/asuransi.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: Column(
                          children: const <Widget>[
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Persiapkan tabungan atau dana cadangan untuk biaya persalinan dan biaya lainnya.",
                              padding: 25,
                            ),
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Siapkan Kartu Jaminan Kesehatan Nasional.",
                              padding: 25,
                            ),
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Untuk memperoleh Kartu JKN, daftarkan diri anda ke kantor BPJS Kesehatan setempat, atau tanyakan ke petugas Puskesmas.",
                              padding: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/rumah.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: Column(
                          children: const <Widget>[
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Rencanakan	melahirkan ditolong oleh dokter atau bidan di fasilitas kesehatan.",
                              padding: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/baju.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: Column(
                          children: const <Widget>[
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Siapkan KTP, Kartu Keluarga, dan keperluan lain untuk ibu dan bayi yang akan dilahirkan.",
                              padding: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/sakit.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: Column(
                          children: const <Widget>[
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Siapkan lebih dari 1 orang yang memiliki golongan darah yang sama dan bersedia menjadi pendonor jika diperlukan.",
                              padding: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/ambulance.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: Column(
                          children: const <Widget>[
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Suami, keluarga dan masyarakat. menyiapkan kendaraan jika sewaktu-waktu diperlukan.",
                              padding: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/nempel.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: Column(
                          children: const <Widget>[
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Pastikan ibu hamil dan keluarga menyepakati amanat persalinan dalam stiker P4K dan sudah ditempelkan di depan rumah ibu hamil.",
                              padding: 25,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/konsultasi2.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: Column(
                          children: const <Widget>[
                            ListDeskripsiWidget(
                              nomor: " - ",
                              deskripsi:
                                  "Rencanakan ikut Keluarga Berencana (KB) setelah bersalin. Tanyakan ke petugas kesehatan tentang cara ber-KB.",
                              padding: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
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
                    builder: (context) => const EduKehamilan8(),
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
