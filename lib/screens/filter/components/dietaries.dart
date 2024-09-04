import 'package:flutter/material.dart';

import '../../../components/section_title.dart';
import '../../../constants.dart';

class Dietaries extends StatefulWidget {
  const Dietaries({super.key});

  @override
  State<Dietaries> createState() => _DietariesState();
}

class _DietariesState extends State<Dietaries> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          title: "Dietary",
          // When press the clean all
          press: () {},
          isMainSection: false,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Wrap(
            spacing: 10,
            children: List.generate(
              demoDietaries.length,
              (index) => ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(56, 40),
                  backgroundColor:
                      index == 1 ? Color(0xFF22A45D) : Color(0xFF868686),
                ),
                child: Text(demoDietaries[index]["title"]),
              ),
            ),
          ),
        )
      ],
    );
  }

  List<Map<String, dynamic>> demoDietaries = [
    {"title": "Any", "isActive": false},
    {"title": "Vegetarian", "isActive": false},
    {"title": "Vegan", "isActive": false},
    {"title": "Gluten-Free", "isActive": false},
  ];
}
