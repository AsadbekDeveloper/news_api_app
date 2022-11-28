import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_api/constants/colors.dart';

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  const CircularIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: textGrey,
        ),
      ),
      child: Center(
        child: FaIcon(
          icon,
          color: textBlack,
          size: 18,
        ),
      ),
    );
  }
}
