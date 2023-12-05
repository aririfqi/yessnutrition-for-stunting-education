// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../../common/styles/color_scheme.dart';
import '../../../data/models/recipe_models/recipe_mpasi.dart';

class DetailMpasi extends StatelessWidget {
  final ResepMpasi mpasi;
  const DetailMpasi({Key? key, required this.mpasi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                    tag: mpasi.imageMpasi,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        mpasi.imageMpasi,
                      ),
                    )),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(144, 189, 145, 251),
                          child: IconButton(
                            icon: const Icon(
                              Icons.chevron_left_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mpasi.namaMpasi,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.accessibility_new_outlined,
                        size: 20,
                        color: primaryColor.withOpacity(0.4),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        mpasi.kategoriUsia,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Bahan-Bahan',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Image.asset(
                    mpasi.imageBahan,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Cara Membuat',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    mpasi.imageStep,
                    height: 355.0,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(
                    height: 8,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
