import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:photo_search_pixabay_app/utils/colors.dart';
import 'package:photo_search_pixabay_app/widgets/AppText.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: "Your Results",
          size: 18,
        ),
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: AppColors.darkBlue,
      ),
      backgroundColor: AppColors.blue,
      body: Container(
        padding: const EdgeInsets.only(
          bottom: 0,
          top: 10,
          left: 15,
          right: 15,
        ),
        child: FutureBuilder(
          future: getImagesFunc(),
          builder: (context, snapShot) {
            var MyData = snapShot.data;
            if (snapShot.hasData) {
              return ListView.builder(
                itemCount: MyData?.length,
                itemBuilder: (context, itemCount) {
                  var src = MyData?["hits"][itemCount]["webformatURL"];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.darkBlue,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        src,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                color: AppColors.accent,
                strokeWidth: 3,
              ));
            }
          },
        ),
      ),
    );
  }
}

Future<Map> getImagesFunc() async {
  String MyUrl =
      "https://pixabay.com/api/?key=15690038-3b48850a0e52bfef3940cedb7&q=yellow+flowers&image_type=photo";
  Uri MyUri = Uri.parse(MyUrl);
  http.Response response = await http.get(MyUri);
  return json.decode(response.body);
}
