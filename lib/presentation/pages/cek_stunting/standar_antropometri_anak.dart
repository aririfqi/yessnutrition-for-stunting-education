import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common/styles/color_scheme.dart';
import 'bodyheight_age_table.dart';

class GiziBayi extends StatefulWidget {
  const GiziBayi({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GiziBayiState createState() => _GiziBayiState();
}

class _GiziBayiState extends State<GiziBayi> {
  List<DropdownMenuItem<String>> dropdownGenderList = [];
  List<String> dropdownGender = ["Perempuan", "Laki-Laki"];

  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  //final TextEditingController _weightController = TextEditingController();
  String? selected, selected1, selected2, genderController;

  late double bodyHeight;
  late int ageInMonth;
  late double index = -1000;
  late List ageRow;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    loadGender();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left_rounded,
                size: 32, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Cek Stunting Bayi'),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    color: infoColor,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    width: width * 0.8,
                    child: Center(
                        child: Text(
                      'Fitur ini hanya pemeriksaan dini, untuk lebih detail silahkan konsultasikan ke Puskesmas',
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 3, 105, 160),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    value: selected,
                    items: dropdownGenderList,
                    hint: const Text("Jenis Kelamin"),
                    icon: const Icon(Icons.arrow_drop_down_circle),
                    iconSize: 15,
                    iconEnabledColor: Colors.black,
                    elevation: 20,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurple,
                    ),
                    onChanged: (genderValue) {
                      selected = genderValue as String?;
                      setState(() {
                        genderController = genderValue;
                      });
                    },
                  ),
                ),
                TextField(
                  style: const TextStyle(
                      fontSize: 15.0, height: 1.5, color: Colors.black),
                  decoration: const InputDecoration(
                    labelText: 'Usia (bulan)',
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
                  controller: _ageController,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Panjang Badan (cm)',
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
                  controller: _heightController,
                ),
                const SizedBox(
                  height: 5,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  minWidth: 300,
                  height: 30,
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  elevation: 5,
                  onPressed: _onPress,
                  child: const Text('Cek Stunting'),
                ),
                const Text("Berikut kondisi Bayi Anda:"),
                const SizedBox(
                  height: 8,
                ),
                LayoutBuilder(builder: (context, constraints) {
                  if (index < -3 && index > -1000) {
                    return Image.asset("assets/img/cs3.png");
                  } else if (index < -1 && index >= -3) {
                    return Image.asset("assets/img/cs2.png");
                  } else if (index < 1 && index >= -1) {
                    return Image.asset("assets/img/cs1.png");
                  } else if (index >= 1) {
                    return Image.asset("assets/img/cs4.png");
                  } else if (index == -1000) {
                    return Image.asset("assets/img/cs0.png");
                  } else {
                    return Image.asset("assets/img/cs0.png");
                  }
                }),
                const SizedBox(
                  height: 8,
                ),
              ],
            )));
  }

  void loadGender() {
    dropdownGenderList = [];
    dropdownGenderList = dropdownGender
        .map((values) => DropdownMenuItem<String>(
              value: values,
              child: Text(values),
            ))
        .toList();
  }

  void _onPress() {
    setState(() {
      ageInMonth = int.parse(_ageController.text);
      bodyHeight = double.parse(_heightController.text);

      if (genderController == "Laki-Laki") {
        ageRow = maleBodyHeightAgeTable[ageInMonth] as List;
      } else if (genderController == "Perempuan") {
        ageRow = femaleBodyHeightAgeTable[ageInMonth] as List;
      }
      final median = ageRow[3];
      if (genderController == "Laki-Laki") {
        if (bodyHeight == median) {
          index = 0;
        } else if (bodyHeight > median) {
          final highLimit = ageRow[6];
          final oneSD = (highLimit - median) / 3;

          final difference = bodyHeight - median;

          index = difference / oneSD;
        } else {
          final lowLimit = ageRow[0];
          final oneSD = (lowLimit - median) / 3;

          final difference = median - bodyHeight;

          index = difference / oneSD;
        }
      } else if (genderController == "Perempuan") {
        if (bodyHeight == median) {
          index = 0;
        } else if (bodyHeight > median) {
          final highLimit = ageRow[6];
          final oneSD = (highLimit - median) / 3;

          final difference = bodyHeight - median;

          index = difference / oneSD;
        } else {
          final lowLimit = ageRow[0];
          final oneSD = (lowLimit - median) / 3;

          final difference = median - bodyHeight;

          index = difference / oneSD;
        }
      }
    });
  }
}
