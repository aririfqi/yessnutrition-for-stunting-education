
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../../data/models/edustunting_models/edu_stunting_model.dart';
import '../../common/styles/color_scheme.dart';
import '../../common/utils/routes.dart';

class CardListEducation extends StatelessWidget {
  EducationStunting educationStunting;

  CardListEducation({super.key, required this.educationStunting});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () {
        Navigator.pushNamed(
          context,
          detailEduRoute,
          arguments: educationStunting,
        );
      },
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Hero(
                        tag: educationStunting.pictureId,
                        child: Image.network(
                          educationStunting.pictureId,
                          width: 120,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      educationStunting.title,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          educationStunting.penulis,
                          selectionColor: unguColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
