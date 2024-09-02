import 'package:flutter/material.dart';

import '../../../components/small_dot.dart';
import '../../../constants.dart';

class FeaturedItemCard extends StatelessWidget {
  const FeaturedItemCard({
    super.key,
    required this.foodType,
    required this.image,
    required this.priceRange,
    required this.press,
    required this.title,
  });

  final String foodType, image, priceRange, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.labelLarge!.copyWith(
          color: Color(0xFF010F07).withOpacity(0.64),
          fontWeight: FontWeight.normal,
        );
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          width: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Color(0xFF010F07), fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    priceRange,
                    style: textStyle,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16 / 2),
                    child: SmallDot(),
                  ),
                  Text(foodType, style: textStyle)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
