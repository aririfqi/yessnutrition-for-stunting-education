import 'package:flutter/material.dart';
import '../../../common/styles/color_scheme.dart';
import '../../../data/models/edustunting_models/edu_stunting_model.dart';

class DetailEducationPage extends StatelessWidget {
  final EducationStunting educationStunting;

  const DetailEducationPage({super.key, required this.educationStunting});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(educationStunting.pictureId),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    educationStunting.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 20,
                        color: primaryColor.withOpacity(0.4),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        educationStunting.penulis,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Materi',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    educationStunting.materi,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Tips',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 330,
                    // implement ListView
                    child: ListView(
                      // make it horizontal
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                            margin: const EdgeInsets.all(15),
                            width: 200,
                            height: 300,
                            alignment: Alignment.center,
                            child:
                                Image.network(educationStunting.gambarTips1)),
                        Container(
                            margin: const EdgeInsets.all(15),
                            width: 200,
                            height: 300,
                            alignment: Alignment.center,
                            child:
                                Image.network(educationStunting.gambarTips2)),
                        Container(
                            margin: const EdgeInsets.all(15),
                            width: 200,
                            height: 300,
                            alignment: Alignment.center,
                            child:
                                Image.network(educationStunting.gambarTips3)),
                        Container(
                            margin: const EdgeInsets.all(15),
                            width: 200,
                            height: 300,
                            alignment: Alignment.center,
                            child:
                                Image.network(educationStunting.gambarTips4)),
                        Container(
                            margin: const EdgeInsets.all(15),
                            width: 200,
                            height: 300,
                            alignment: Alignment.center,
                            child:
                                Image.network(educationStunting.gambarTips5)),
                      ],
                    ),
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
