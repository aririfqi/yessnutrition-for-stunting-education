// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:yess_nutrition/data/models/recipe_models/recipe_mpasi.dart';
import 'package:yess_nutrition/presentation/pages/check_pages/detail_mpasi.dart';

import '../../../common/styles/color_scheme.dart';

class ListMpasi extends StatelessWidget {
  const ListMpasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded,
              size: 32, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Resep MPASI'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.84,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        final ResepMpasi mpasi = resepMpasimodel[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailMpasi(
                                mpasi: mpasi,
                              );
                            }));
                          },
                          child: Card(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      mpasi.imageMpasi,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          mpasi.namaMpasi,
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(mpasi.kategoriUsia),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Text(
                                              'Yuk Coba buat',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge!
                                                  .copyWith(
                                                    color: primaryColor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 4),
                                              child: Icon(
                                                Icons.chevron_right_rounded,
                                                color: primaryColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: resepMpasimodel.length,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
