import 'package:flutter/material.dart';
import '../../../widgets/widgets_edu_ibuHamil/deskripsi_widget.dart';
import '../../../widgets/widgets_edu_ibuHamil/judul_besar.dart';
import '../../../../common/styles/color_scheme.dart';
import '../../../../common/styles/text_style.dart';
import '../../../widgets/widgets_edu_ibuHamil/list_deskripsi.dart';
import '../edu_nifas/edu_nifas4.dart';

class EduNifas3 extends StatelessWidget {
  const EduNifas3({super.key});

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
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JudulBesar(judul: "CARA MENYUSUI BAYI "),
            const SizedBox(
              height: 5,
            ),
            const DeskripsiWidget(
                deskripsi: 'Cara menyusui yang benar :', padding: 3),
            const ListDeskripsiWidget(
                nomor: " - ",
                deskripsi:
                    "Susui bayi sesering mungkin, semau bayi, paling sedikit 8 kali sehari.",
                padding: 15),
            const ListDeskripsiWidget(
                nomor: " - ",
                deskripsi:
                    "Bila bayi tidur lebih dari 3 jam, bangunkan, lalu susui",
                padding: 15),
            const ListDeskripsiWidget(
                nomor: " - ",
                deskripsi:
                    "Susui sampai payudara terasa kosong, lalu pindah ke payudara sisi yang lain",
                padding: 15),
            const ListDeskripsiWidget(
                nomor: " - ",
                deskripsi:
                    "Bila bayi sudah kenyang, tapi payudara masih terasa penuh/kencang, perlu dikosongkan dengan diperah untuk disimpan. Hal ini agar payudara tetap memproduksi ASI yang cukup.",
                padding: 15),
            const JudulBesar(judul: "Posisi dan pelekatan menyusui yang benar"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/menyusui1.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const ListDeskripsiWidget(
                          nomor: " - ",
                          deskripsi:
                              "Pastikan posisi ibu ada dalam posisi yang nyaman Susui sampai payudara terasa kosong, lalu pindah ke payudara sisi yang lain",
                          padding: 15,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const ListDeskripsiWidget(
                          nomor: " - ",
                          deskripsi:
                              "Kepala dan badan bayi berada dalam garis lurus",
                          padding: 15,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const ListDeskripsiWidget(
                          nomor: " - ",
                          deskripsi:
                              "Wajah bayi menghadap payudara, hidung berhadapan dengan puting.",
                          padding: 15,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const ListDeskripsiWidget(
                          nomor: " - ",
                          deskripsi:
                              "Ibu harus memeluk badan bayi dekat dengan badannya.",
                          padding: 15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image.asset(
                          'assets/imgibuhamil/menyusui2.png',
                          width: 150,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const ListDeskripsiWidget(
                          nomor: " - ",
                          deskripsi:
                              "Jika bayi baru lahir, Ibu harus menyangga seluruh badan bayi.",
                          padding: 15,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const ListDeskripsiWidget(
                          nomor: " - ",
                          deskripsi:
                              "Sebagian besar areola (bagian hitam disekitar puting) masuk ke dalam mulut bayi.",
                          padding: 15,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const ListDeskripsiWidget(
                          nomor: " - ",
                          deskripsi: "Mulut terbuka lebar.",
                          padding: 15,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const ListDeskripsiWidget(
                          nomor: " - ",
                          deskripsi: "Bibir bawah melengkung ke luar.",
                          padding: 15,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: const ListDeskripsiWidget(
                          nomor: " - ",
                          deskripsi: "Dagu menyentuh payudara ibu.",
                          padding: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Center(
              child: JudulBesar(judul: "Posisi Menyusui Bayi Kembar :"),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Image.asset(
                  'assets/imgibuhamil/menyusuikembar.png',
                  width: 350,
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
                    builder: (context) => const EduNifas4(),
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
