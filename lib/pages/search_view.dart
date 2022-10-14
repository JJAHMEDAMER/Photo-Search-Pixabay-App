import 'package:flutter/material.dart';
import 'package:photo_search_pixabay_app/utils/colors.dart';
import 'package:photo_search_pixabay_app/widgets/AppButton.dart';
import 'package:photo_search_pixabay_app/widgets/AppInputField.dart';
import 'package:photo_search_pixabay_app/widgets/AppText.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PixaPay!"),
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: AppColors.darkBlue,
      ),
      backgroundColor: AppColors.blue,
      body: Container(
        margin: const EdgeInsets.all(15),
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AppText(
              text: "PixaBay API Search",
              size: 26,
            ),
            AppInputField(),
            AppButton(
              text: "Search",
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
