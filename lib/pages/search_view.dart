import 'package:flutter/material.dart';
import 'package:photo_search_pixabay_app/pages/result_view.dart';
import 'package:photo_search_pixabay_app/utils/colors.dart';
import 'package:photo_search_pixabay_app/widgets/AppButton.dart';
import 'package:photo_search_pixabay_app/widgets/AppInputField.dart';
import 'package:photo_search_pixabay_app/widgets/AppText.dart';

class SearchView extends StatelessWidget {
  TextEditingController inputText = TextEditingController();
  SearchView({super.key,});

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
            AppInputField(textController: inputText,),
            AppButton(
              text: "Search",
              size: 18,
              func: () {
                print(inputText.text);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultView(searchTerm: inputText.text);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
