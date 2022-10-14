import 'package:flutter/material.dart';
import 'package:photo_search_pixabay_app/utils/colors.dart';
import 'package:photo_search_pixabay_app/widgets/AppText.dart';

class AppButton extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  final String fontFamily;

  const AppButton(
      {super.key,
      required this.text,
      this.size = 16,
      this.fontWeight = FontWeight.w600,
      this.fontFamily = 'Raleway',
      this.color = AppColors.accent});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkBlue,
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          right: 25,
          left: 25,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: 'Raleway',
        ),
      ),
    );
  }
}
