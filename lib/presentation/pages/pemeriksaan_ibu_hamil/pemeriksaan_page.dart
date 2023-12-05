import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yess_nutrition/presentation/pages/pemeriksaan_ibu_hamil/input_data_pemeriksaan.dart';

import '../../../common/styles/color_scheme.dart';

class TabelPemeriksaan extends StatefulWidget {
  const TabelPemeriksaan({super.key});

  @override
  State<TabelPemeriksaan> createState() => _TabelPemeriksaanState();
}

class _TabelPemeriksaanState extends State<TabelPemeriksaan> {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static User user = _auth.currentUser!;

  // ignore: non_constant_identifier_names
  final Stream<QuerySnapshot> data_user = FirebaseFirestore.instance
      .collection('pasiens')
      .doc(user.uid)
      .collection('data_pemeriksaan')
      .orderBy('id', descending: true)
      .snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: data_user,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Scaffold(
            body: Center(
              child: Text('Something went wrong'),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: Text('Loading....'),
            ),
          );
        }
        final data = snapshot.requireData;
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.chevron_left_rounded,
                  size: 32, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              // data.size == 0
              //     ?
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TambahTablePemeriksaan(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
              // : const Text('')
            ],
            backgroundColor: primaryColor,
            title: Text(
              'Pemeriksaan Ibu Hamil',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: data.size == 0 ? 1 : data.size,
            itemBuilder: (BuildContext context, int index) {
              return data.size != 0
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Pemeriksaan Ke - ${data.size - (index)} (${data.docs[index]['nama']})',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                            columns: const <DataColumn>[
                              DataColumn(
                                label: Flexible(
                                  child: Text(
                                    'Nama \nPasien',
                                    style: TextStyle(),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Flexible(
                                  child: Text(
                                    'Alamat',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Flexible(
                                  child: Text(
                                    'Hasil \npemeriksaan \nlaboratorium',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                    softWrap: true,
                                    textWidthBasis: TextWidthBasis.parent,
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Flexible(
                                  child: Text(
                                    'Tindakan\n(Pemberian Fe,\nterapi,rujukan\numpan balik)',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Flexible(
                                  child: Text(
                                    'Kaki\nBengkak',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Flexible(
                                  child: Text(
                                    'Pemeriksaan\nSelanjutnya',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text(
                                    '${data.docs[index]['nama']}',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  )),
                                  DataCell(
                                    Text('${data.docs[index]['alamat']}'),
                                  ),
                                  DataCell(
                                    Text(
                                        '${data.docs[index]['hasilLaboratorium']}'),
                                  ),
                                  DataCell(
                                    Text('${data.docs[index]['tindakan']}'),
                                  ),
                                  DataCell(
                                    Text('${data.docs[index]['kakiBengkak']}'),
                                  ),
                                  DataCell(
                                    Text(
                                        '${data.docs[index]['pemeriksaanSelanjutnya']}'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Center(
                      child: Text(
                        'Tidak Ada Data',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    );
            },
          ),
          // floatingActionButtonLocation:
          //     FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}
