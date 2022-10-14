import 'package:flutter/material.dart';
import 'package:photo_search_pixabay_app/utils/colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;

  const AppText({
    super.key,
    required this.text,
    this.color = AppColors.accent,
    this.size = 16,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: 'Raleway',
      ),
    );
  }
}
