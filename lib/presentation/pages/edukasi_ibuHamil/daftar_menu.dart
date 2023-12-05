import 'package:flutter/material.dart';
import 'package:yess_nutrition/common/styles/color_scheme.dart';
import 'package:yess_nutrition/common/styles/text_style.dart';
import 'package:yess_nutrition/presentation/pages/edukasi_ibuHamil/porsi_makan_minum_ibuHamil/porsi_makan_minum.dart';
import 'package:yess_nutrition/presentation/pages/edukasi_ibuHamil/ucapan_apresiasi/apresiasi.dart';
import '../edukasi_ibuHamil/edu_bersalin/bersalin1.dart';
import '../edukasi_ibuHamil/edu_kehamilan/edu_kehamilan1.dart';
import '../edukasi_ibuHamil/edu_nifas/edu_nifas1.dart';
import '../edukasi_ibuHamil/keluarga_berencana/edu_kb.dart';

class DaftarMenu extends StatelessWidget {
  const DaftarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            '\t\t\t             Edukasi Ibu Hamil\n(Berdasarkan Buku KIA 2020)'),
      ),
      body: Container(
        height: size.height,
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        color: Colors.white10,
        child: SingleChildScrollView(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PorsiMakanMinumIbuHamil()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27),
                            color: ibuNifasColor,
                          ),
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/imgibuhamil/makan.png',
                                width: 100,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Porsi Makan & Minum\nIbu Hamil dan Menyusui",
                                style: daftarIsi,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EduKehamilan1()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27),
                          color: ibuNifasColor,
                        ),
                        width: 150,
                        height: 150,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/imgibuhamil/gambarHamil.png',
                              width: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Edukasi Kehamilan",
                              style: daftarIsi,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EduNifas1()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27),
                          color: ibuNifasColor,
                        ),
                        width: 150,
                        height: 150,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/imgibuhamil/periksa_nifas.png',
                              width: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Edukasi Nifas",
                              style: daftarIsi,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Bersalin1()),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: ibuBersalinColor,
                          borderRadius: BorderRadius.circular(27),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/imgibuhamil/bersalin.png',
                              width: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Info Ibu Bersalin",
                              style: daftarIsi,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const EdukasiKeluargaBerencana()),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: keluargaBerencanaColor,
                          borderRadius: BorderRadius.circular(27),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/imgibuhamil/obat.png',
                              width: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Flexible(
                              child: Text(
                                "Info\nKeluarga Berencana",
                                style: daftarIsi,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Apresiasi()),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: keluargaBerencanaColor,
                          borderRadius: BorderRadius.circular(27),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/imgibuhamil/apresiasi.png',
                              width: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Flexible(
                              child: Text(
                                "Terima Kasih\nKeluarga Terkasih",
                                style: daftarIsi,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
