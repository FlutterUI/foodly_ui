import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/categories.dart';
import 'components/dietaries.dart';
import 'components/price_range.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Categories(),
              SizedBox(height: 16),
              Dietaries(),
              SizedBox(height: 16),
              PriceRange(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
