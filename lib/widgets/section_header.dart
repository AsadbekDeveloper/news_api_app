import 'package:flutter/material.dart';

import '../constants/text_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(
          title,
          style: h1,
        ),
        const Text(
          'See More',
          style: d3,
        ),
      ],
    );
  }
}
