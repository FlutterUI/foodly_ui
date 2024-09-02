import 'package:flutter/material.dart';

import '../../../constants.dart';

class RequiredSectionTitle extends StatelessWidget {
  const RequiredSectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16 / 2,
            vertical: 16 / 4,
          ),
          decoration: BoxDecoration(
              color: Color(0xFF22A45D).withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(4))),
          child: Text(
            "Required".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: Color(0xFF22A45D)),
          ),
        )
      ],
    );
  }
}
