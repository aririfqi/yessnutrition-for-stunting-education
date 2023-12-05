import 'package:flutter/material.dart';

class TipsMinumPage extends StatelessWidget {
  const TipsMinumPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.4, 0.7, 0.5, 0.5],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0xfffafdff),
            Color(0xfffafdff),
            Color(0xffE7FFFF),
            Color(0xffE7FFFF),
          ],
        ),
      ),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 300,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        "assets/img/splashgizi.png",
                      ),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(30, 189, 145, 251),
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
                          const SizedBox(
                            height: 80,
                          ),
                          const Text(
                            "Tips Minum Air Putih Bagi Ibu Hamil",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            "Sehat itu mudah | Kolaborasi bersama Puskesmas Sekotong",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xffE1F5FF),
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "Tips Minum Air Putih Bagi Ibu Hamil",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Minum minimal 8 gelas air putih/hari",
                      "25", "assets/img/air2.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Setara 2.1 liter air (Kemenkes RI)", "25",
                      "assets/img/air2.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard(
                      "\tTakaran Air Minum", "24", "assets/img/takaranAir.png");
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

///////

////////////////
class DetailGiziPage extends StatelessWidget {
  const DetailGiziPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.4, 0.7, 0.5, 0.5],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0xfffafdff),
            Color(0xfffafdff),
            Color(0xffE7FFFF),
            Color(0xffE7FFFF),
          ],
        ),
      ),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 300,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        "assets/img/splashgizi.png",
                      ),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(30, 189, 145, 251),
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
                          const SizedBox(
                            height: 80,
                          ),
                          const Text(
                            "Tips Memenuhi Gizi Sehat",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            "Sehat itu mudah | Kolaborasi bersama Puskesmas Sekotong",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xffE1F5FF),
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "5 Tips Penuhi Kebutuhan Gizi Ibu Hamil",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Konsumsi makanan mengandung asam folat",
                      "24", "assets/img/tipsgizi1A.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Perbanyak konsumsi aneka buah dan sayur",
                      "24", "assets/img/tipsgizi1B.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard(
                      "Makan perlahan dan kunyah makanan perlahan",
                      "24",
                      "assets/img/tipsgizi12.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Hindari makanan berlemak dan berminyak",
                      "24", "assets/img/tipsgizi1D.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("HIndari makan/minum mendekati waktu tidur",
                      "24", "assets/img/tipsgizi1E.png");
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class CourseCard extends StatelessWidget {
  final String title, count, imagePath;

  CourseCard(
    this.title,
    this.count,
    this.imagePath,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 140.0,
            width: 250.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(24),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15.0,
                      offset: Offset(0.75, 0.95))
                ],
                color: Colors.grey),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.3,
                  fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////
///
///

class DetailCookTipsPage extends StatelessWidget {
  const DetailCookTipsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.4, 0.7, 0.5, 0.5],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0xfffafdff),
            Color(0xfffafdff),
            Color(0xffE7FFFF),
            Color(0xffE7FFFF),
          ],
        ),
      ),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 300,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        "assets/img/splashgizi.png",
                      ),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(30, 189, 145, 251),
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
                          const SizedBox(
                            height: 80,
                          ),
                          const Text(
                            "Tips Memasak Sehat",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            "Sehat itu mudah | Kolaborasi bersama Puskesmas Sekotong",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xffE1F5FF),
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "5 Tips Memasak Sayur Agar Gizi Tetap Utuh",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Mencuci sayur dengan air mengalir", "24",
                      "assets/img/tipsgizi2a.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Memotong dengan potongan besar", "24",
                      "assets/img/tipsgizi2b.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Masak segera setelah dipotong", "24",
                      "assets/img/tipsgizi2c.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Menjaga suhu air agar tidak terlalu panas",
                      "24", "assets/img/tipsgizi2d.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Jaga sayuran tetap higienis", "24",
                      "assets/img/tipsgizi2e.png");
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
////////////////////
///
///

class DetailWorkTipsPage extends StatelessWidget {
  const DetailWorkTipsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.4, 0.7, 0.5, 0.5],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0xfffafdff),
            Color(0xfffafdff),
            Color(0xffE7FFFF),
            Color(0xffE7FFFF),
          ],
        ),
      ),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 300,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        "assets/img/splashgizi.png",
                      ),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(30, 189, 145, 251),
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
                          const SizedBox(
                            height: 60,
                          ),
                          const Text(
                            "Tips Menjaga Asupan Nutrisi Bagi Ibu Hamil yang Sibuk Bekerja",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            "Kolaborasi bersama Puskesmas Sekotong",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xffE1F5FF),
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "5 Tips Menjaga Asupan Nutrisi\nBagi Ibu Hamil yang Sibuk Bekerja",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Makan makanan kaya zat besi", "24",
                      "assets/img/tipsgizi3a.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Olah emosi dan hindri stress", "24",
                      "assets/img/tipsgizi3b.png");
                },
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard(
                      "Buatlah jadwal makan menjadi 3 kali makan utama\ndan 2 kali camilan agar perut tidak kosong.",
                      "24",
                      "assets/img/tipsgizi3c.png");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard(
                      "Minum air mineral minimal 10 gelas (2.500 ml/hari).",
                      "24",
                      "assets/img/tipsgizi3d.png");
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CourseCard("Jadwalkan waktu istirahat ketika bekerja",
                      "24", "assets/img/tipsgizi3e.png");
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
