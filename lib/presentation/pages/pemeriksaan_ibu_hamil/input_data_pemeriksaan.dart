import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yess_nutrition/presentation/pages/pemeriksaan_ibu_hamil/pemeriksaan_page.dart';

import '../../../common/styles/color_scheme.dart';
import '../../../data/models/fitur_ibu_hamil/data_pemeriksaan_ibu_hamil.dart';
import '../../widgets/widgets_edu_ibuHamil/rounded_button.dart';
import '../../widgets/widgets_edu_ibuHamil/rounded_input_field.dart';

class TambahTablePemeriksaan extends StatefulWidget {
  const TambahTablePemeriksaan({Key? key}) : super(key: key);

  @override
  State<TambahTablePemeriksaan> createState() => _TambahTablePemeriksaan();
}

class _TambahTablePemeriksaan extends State<TambahTablePemeriksaan> {
  TextEditingController kakiBengkakController = TextEditingController(text: "");
  TextEditingController hasilPemeriksaanController =
      TextEditingController(text: "");
  TextEditingController tindakanController = TextEditingController(text: "");
  TextEditingController namaController = TextEditingController(text: "");
  TextEditingController alamatController = TextEditingController(text: "");
  TextEditingController kapanKembaliController =
      TextEditingController(text: "");
  int datalength = 0;

  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static User user = _auth.currentUser!;
  void getData() async {
    //use a Async-await function to get the data
    final data = await FirebaseFirestore.instance
        .collection('pasiens')
        .doc(user.uid)
        .collection('data_pemeriksaan')
        .get(); //get the data
    datalength = data.size;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
//  Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded,
              size: 32, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: primaryColor,
        title: Text(
          'Data Pemeriksaan Ibu ',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: unguColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Data Pemeriksaan",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedInputField(
                keyboard: TextInputType.name,
                controller: namaController,
                hintText: "Nama Pasien",
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedInputField(
                keyboard: TextInputType.name,
                controller: alamatController,
                hintText: "Alamat",
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedInputField(
                keyboard: TextInputType.name,
                controller: hasilPemeriksaanController,
                hintText: "Hasil Pemeriksaan Laboratorium",
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedInputField(
                keyboard: TextInputType.name,
                controller: tindakanController,
                hintText: "Tindakan (pemberian TT, Fe, Dll)",
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedInputField(
                keyboard: TextInputType.name,
                controller: kakiBengkakController,
                hintText: "Kaki Bengkak (Ya/Tidak)",
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedInputField(
                keyboard: TextInputType.name,
                controller: kapanKembaliController,
                hintText: "Pemeriksaan selanjutnya",
              ),
              const SizedBox(
                height: 25,
              ),
              RoundedButton(
                text: "Simpan",
                press: () async {
                  await AuthServices.pemeriksaanTabel(
                    namaController.text,
                    alamatController.text,
                    hasilPemeriksaanController.text,
                    tindakanController.text,
                    kakiBengkakController.text,
                    kapanKembaliController.text,
                    datalength + 1,
                  )
                      .then(
                        (value) => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Berhasil Menambahkan data'),
                          ),
                        ),
                      )
                      .onError(
                        (error, stackTrace) =>
                            ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Gagal Menambahkan data'),
                          ),
                        ),
                      );
                  // ignore: use_build_context_synchronously
                  await Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const TabelPemeriksaan();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
