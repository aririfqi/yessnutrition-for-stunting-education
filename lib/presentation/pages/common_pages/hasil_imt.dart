import 'package:flutter/material.dart';
import 'dart:math';

class IMTResult extends StatelessWidget {
  final int tinggiBadan;
  final int beratBadan;
  const IMTResult({
    super.key,
    required this.tinggiBadan,
    required this.beratBadan,
  });

  @override
  Widget build(BuildContext context) {
    double imt = beratBadan / pow(tinggiBadan / 100, 2);
    String cIMT;
    if (imt >= 28) {
      cIMT = "Obesitas";
    } else if (imt >= 23) {
      cIMT = "Berat Badan Berlebih";
    } else if (imt >= 17.5) {
      cIMT = "Normal";
    } else {
      cIMT = "Berat Badan Kurang";
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hasil"),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded,
              size: 32, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              cIMT,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              imt.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.purple,
              ),
            ),
            const Text(
              'Rentang IMT Normal',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.purple,
              ),
            ),
            const Text(
              '17,5 - 22,9',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.purple),
            )
          ],
        ),
      ),
    );
  }
}
