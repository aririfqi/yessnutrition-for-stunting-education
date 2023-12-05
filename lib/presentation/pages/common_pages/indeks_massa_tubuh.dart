// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'hasil_imt.dart';

class InputIMT extends StatefulWidget {
  const InputIMT({super.key});

  @override
  _InputIMTState createState() => _InputIMTState();
}

class _InputIMTState extends State<InputIMT> {
  int tinggi = 0;
  int berat = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded,
              size: 32, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Cek IMT'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img/bmi.png',
              fit: BoxFit.fitWidth,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        tinggi = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                        suffix: Text('cm'), filled: true, hintText: 'Tinggi'),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        berat = int.tryParse(txt) ?? 0;
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                        suffix: Text('kg'), filled: true, hintText: 'Berat'),
                  ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.only(top: 10, bottom: 10)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => IMTResult(
                                  tinggiBadan: tinggi,
                                  beratBadan: berat,
                                )));
                  },
                  child: const Text(
                    'Hitung IMT',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          color: Colors.black54,
          alignment: Alignment.center,
          child: const Text(
            'YessNutrition',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
