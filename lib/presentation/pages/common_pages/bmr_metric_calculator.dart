import 'package:flutter/material.dart';

class BMRMetricSystem extends StatefulWidget {
  const BMRMetricSystem({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BMRMetricSystemState createState() => _BMRMetricSystemState();
}

class _BMRMetricSystemState extends State<BMRMetricSystem> {
  List<DropdownMenuItem<String>> dropdownGenderList = [];
  List<DropdownMenuItem<String>> dropdownEquationList = [];
  List<DropdownMenuItem<String>> dropdownActivityList = [];
  List<String> dropdownGender = ["Perempuan", "Laki-Laki"];
  List<String> dropdownEquation = ["Harris-Benedict"];
  List<String> dropdownActivity = [
    "Saya tidak banyak beraktivitas",
    "Saya sedikit beraktivitas",
    "Saya cukup banyak beraktivitas",
    "Saya sangat aktif beraktivitas",
    "Saya beraktivitas fisik berat"
  ];
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  String? selected,
      selected1,
      selected2,
      genderController,
      equationController,
      activityController;
  int age = 0,
      height = 0,
      weight = 0,
      bmrTotal = 0,
      calories = 0,
      karbohidrat = 0,
      protein = 0,
      lemak = 0;
  double? bmrDouble = 0.0,
      caloriesDouble,
      karboDouble,
      proteinDouble,
      lemakDouble;

  @override
  Widget build(BuildContext context) {
    loadGender();
    loadEquation();
    loadActivity();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left_rounded,
                size: 32, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Menghitung Kalori Tubuh'),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/img/bmr.png',
                  scale: 1,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    value: selected1,
                    items: dropdownEquationList,
                    hint: const Text("Rumus BMR"),
                    icon: const Icon(Icons.arrow_drop_down_circle),
                    iconSize: 15,
                    iconEnabledColor: Colors.black,
                    elevation: 20,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurple,
                    ),
                    onChanged: (equationChoice) {
                      selected1 = equationChoice as String?;
                      setState(() {
                        equationController = equationChoice;
                      });
                    },
                  ),
                ),
                TextField(
                  style: const TextStyle(
                      fontSize: 15.0, height: 1.5, color: Colors.black),
                  decoration: const InputDecoration(
                    labelText: 'Usia',
                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
                  controller: _ageController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Tinggi Badan (cm)',
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
                  controller: _heightController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Berat Badan (kg)',
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
                  controller: _weightController,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    value: selected2,
                    items: dropdownActivityList,
                    hint: const Text("Tingkat Aktivitas"),
                    icon: const Icon(Icons.arrow_drop_down_circle),
                    iconSize: 15,
                    iconEnabledColor: Colors.black,
                    elevation: 20,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurple,
                    ),
                    onChanged: (activityChoice) {
                      selected2 = activityChoice as String?;
                      setState(() {
                        activityController = activityChoice;
                      });
                    },
                  ),
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
                  child: const Text('Hitung BMR'),
                ),
                const Text("Berikut hasil BMR Anda:"),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "BMR Anda sebesar $bmrTotal",
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                    "Kalori : $calories\nKarbohidrat : $karbohidrat\nProtein : $protein\nLemak : $lemak"),
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

  void loadEquation() {
    dropdownEquationList = [];
    dropdownEquationList = dropdownEquation
        .map((values) => DropdownMenuItem<String>(
              value: values,
              child: Text(values),
            ))
        .toList();
  }

  void loadActivity() {
    dropdownActivityList = [];
    dropdownActivityList = dropdownActivity
        .map((values) => DropdownMenuItem<String>(
              value: values,
              child: Text(values),
            ))
        .toList();
  }

  void _onPress() {
    setState(() {
      age = int.parse(_ageController.text);
      height = int.parse(_heightController.text);
      weight = int.parse(_weightController.text);

      if (genderController == "Laki-Laki") {
        if (equationController == "Harris-Benedict") {
          bmrDouble =
              66.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age);
        }
      } else if (genderController == "Perempuan") {
        if (equationController == "Harris-Benedict") {
          bmrDouble =
              655.1 + (9.563 * weight) + (1.85 * height) - (4.676 * age);
        }
      }
      bmrTotal = (bmrDouble!.round());
      if (activityController == "Saya tidak banyak beraktivitas") {
        caloriesDouble = (bmrTotal * 1.2);
        proteinDouble = (caloriesDouble! * 0.35);
        karboDouble = (caloriesDouble! * 0.45);
        lemakDouble = (caloriesDouble! * 0.20);
      } else if (activityController == "Saya sedikit beraktivitas") {
        caloriesDouble = (bmrTotal * 1.375);
        proteinDouble = (caloriesDouble! * 0.35);
        karboDouble = (caloriesDouble! * 0.45);
        lemakDouble = (caloriesDouble! * 0.20);
      } else if (activityController == "Saya cukup banyak beraktivitas") {
        caloriesDouble = (bmrTotal * 1.55);
        proteinDouble = (caloriesDouble! * 0.35);
        karboDouble = (caloriesDouble! * 0.45);
        lemakDouble = (caloriesDouble! * 0.20);
      } else if (activityController == "Saya sangat aktif beraktivitas") {
        caloriesDouble = (bmrTotal * 1.725);
        proteinDouble = (caloriesDouble! * 0.35);
        karboDouble = (caloriesDouble! * 0.45);
        lemakDouble = (caloriesDouble! * 0.20);
      } else if (activityController == "Saya beraktivitas fisik berat") {
        caloriesDouble = (bmrTotal * 1.9);
        proteinDouble = (caloriesDouble! * 0.35);
        karboDouble = (caloriesDouble! * 0.45);
        lemakDouble = (caloriesDouble! * 0.20);
      }
      calories = (caloriesDouble!.round());
      karbohidrat = (karboDouble!.round());
      protein = (proteinDouble!.round());
      lemak = (lemakDouble!.round());
    });
  }
}
