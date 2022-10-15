import 'package:flutter/material.dart';
import 'package:photo_search_pixabay_app/utils/colors.dart';

class AppInputField extends StatelessWidget {
  final TextEditingController textController;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final String fontFamily;

  const AppInputField({
    super.key,
    this.color = AppColors.accent,
    this.size = 16,
    this.fontWeight = FontWeight.w600,
    this.fontFamily = 'Raleway',
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // get text
      controller: textController,

      // How it Looks
      cursorWidth: 2.2,
      cursorColor: AppColors.darkGreen,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
      decoration: InputDecoration(
        // Fill Color
        filled: true,
        fillColor: AppColors.darkBlue,

        //Border
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),

        // Hint
        hintText: "Type Here ...",
        hintStyle: TextStyle(
          color: color.withOpacity(0.5),
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
        ),
        helperText: "Search For Any Image",
        helperStyle: TextStyle(
          color: color.withOpacity(0.8),
          fontSize: 11,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
