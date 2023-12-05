import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static User user = _auth.currentUser!;
  final id = user.uid;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //tambah data  pemeriksaan
  static Future<User?> pemeriksaanTabel(
    String nama,
    String alamat,
    String hasilPemeriksaan,
    String tindakan,
    String kakiBengkak,
    String kapanHarusKembali,
    int id,
  ) async {
    await FirebaseFirestore.instance
        .collection('pasiens')
        .doc(user.uid)
        .collection('data_pemeriksaan')
        .add({
      'nama': nama,
      'alamat': alamat,
      'hasilLaboratorium': hasilPemeriksaan,
      'tindakan': tindakan,
      'kakiBengkak': kakiBengkak,
      'pemeriksaanSelanjutnya': kapanHarusKembali,
      'id': id,
    });
  }
}
