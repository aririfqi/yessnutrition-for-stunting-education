// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:yess_nutrition/common/styles/color_scheme.dart';
import '../../../data/models/edustunting_models/edu_stunting_model.dart';
import 'detail_edu_page.dart';
import 'detail_tips_gizi.dart';

class EducationStuntingListPage extends StatelessWidget {
  const EducationStuntingListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.deepPurple, Colors.purple])),
        ),
        title: const Text(
          'Edukasi Gizi dan Stunting',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Row(children: const [
                Text(
                  'Edukasi Gizi',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const TipsMinumPage();
                          }));
                        },
                        splashColor: const Color.fromARGB(255, 180, 114, 223)
                            .withOpacity(0.5),
                        child: Ink(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/img/air.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DetailGiziPage();
                          }));
                        },
                        splashColor: const Color.fromARGB(255, 180, 114, 223)
                            .withOpacity(0.5),
                        child: Ink(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/img/tipsgizi1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DetailCookTipsPage();
                          }));
                        },
                        splashColor: const Color.fromARGB(255, 180, 114, 223)
                            .withOpacity(0.5),
                        child: Ink(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/img/tipsgizi2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DetailWorkTipsPage();
                          }));
                        },
                        splashColor: const Color.fromARGB(255, 180, 114, 223)
                            .withOpacity(0.5),
                        child: Ink(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/img/tipsgizi3.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )),
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Row(children: const [
                Text(
                  'Edukasi Stunting',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.44,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        final EducationStunting edu = education[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailEducationPage(
                                educationStunting: edu,
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
                                    child: Image.network(edu.pictureId),
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
                                          edu.title,
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(edu.penulis),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: education.length,
                    ),
                  ),
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 20,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
