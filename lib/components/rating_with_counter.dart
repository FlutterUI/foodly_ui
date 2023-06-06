import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../size_config.dart';

class RatingWithCounter extends StatelessWidget {
  const RatingWithCounter({
    Key? key,
    required this.rating,
    required this.numOfRating,
  }) : super(key: key);

  final double rating;
  final int numOfRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rating.toString(),
          style: Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(color: titleColor.withOpacity(0.74)),
        ),
        const HorizontalSpacing(of: 5),
        SvgPicture.asset(
          "assets/icons/rating.svg",
          height: 20,
          width: 20,
          colorFilter: const ColorFilter.mode(
            primaryColor,
            BlendMode.srcIn,
          ),
        ),
        const HorizontalSpacing(of: 5),
        Text("$numOfRating+ Ratings",
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: titleColor.withOpacity(0.74))),
      ],
    );
  }
}
