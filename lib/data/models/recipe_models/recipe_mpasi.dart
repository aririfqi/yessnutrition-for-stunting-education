class ResepMpasi {
  late String namaMpasi;
  late String kategoriUsia;
  late String imageMpasi;
  late String imageBahan;
  late String imageStep;

  ResepMpasi({
    required this.namaMpasi,
    required this.kategoriUsia,
    required this.imageMpasi,
    required this.imageBahan,
    required this.imageStep,
  });
}

var resepMpasimodel = [
  //1
  ResepMpasi(
      namaMpasi: 'Puree Ubi dan Kembang Kol',
      kategoriUsia: 'untuk bayi berusia 6-7 bulan',
      imageMpasi: 'assets/img/ubiukol.png',
      imageBahan: 'assets/img/bahan1.png',
      imageStep: 'assets/img/step1_1.png'),

  //2
  ResepMpasi(
      namaMpasi: 'Puree Labu Kuning',
      kategoriUsia: 'untuk bayi berusia 6-7 bulan',
      imageMpasi: 'assets/img/pureeLabu.png',
      imageBahan: 'assets/img/bahan2.png',
      imageStep: 'assets/img/step2.png'),
  //3
  ResepMpasi(
      namaMpasi: 'Puree Kacang Hijau',
      kategoriUsia: 'untuk bayi berusia 6-7 bulan',
      imageMpasi: 'assets/img/purekacanghijau.png',
      imageBahan: 'assets/img/bahan3.png',
      imageStep: 'assets/img/step3.png'),
  //4
  ResepMpasi(
      namaMpasi: 'Bubur Saring Ayam dan Tahu',
      kategoriUsia: 'untuk bayi berusia 7-9 bulan',
      imageMpasi: 'assets/img/ayamtahu.png',
      imageBahan: 'assets/img/bahan4.png',
      imageStep: 'assets/img/step4.png'),
  //5
  ResepMpasi(
      namaMpasi: 'Puding Roti Kayu Manis',
      kategoriUsia: 'untuk bayi berusia 7-9 bulan',
      imageMpasi: 'assets/img/pudingkayumanis.png',
      imageBahan: 'assets/img/bahan5.png',
      imageStep: 'assets/img/step5.png'),
  //6
  ResepMpasi(
      namaMpasi: 'Bubur Nasi Daging Cincang',
      kategoriUsia: 'untuk bayi berusia 7-9 bulan',
      imageMpasi: 'assets/img/nasidaging.png',
      imageBahan: 'assets/img/bahan6.png',
      imageStep: 'assets/img/step6.png'),
  //7
  ResepMpasi(
      namaMpasi: 'Bubur Jagung Manis',
      kategoriUsia: 'untuk bayi berusia 9-12 bulan',
      imageMpasi: 'assets/img/nasijagungmanis.png',
      imageBahan: 'assets/img/bahan7.png',
      imageStep: 'assets/img/step7.png'),
  //8
  ResepMpasi(
      namaMpasi: 'Tim Labu Ikan',
      kategoriUsia: 'untuk bayi berusia 9-12 bulan',
      imageMpasi: 'assets/img/labu-kuning.png',
      imageBahan: 'assets/img/bahan8.png',
      imageStep: 'assets/img/step8.png'),
];
