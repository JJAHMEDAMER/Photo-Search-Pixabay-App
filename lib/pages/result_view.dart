import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heyyy!"),
        centerTitle: true,
        toolbarHeight: 50,
      ),
      body: Container(
        child: Column(
          children: [
            Text("Body"),
            FutureBuilder(
              future: getImagesFunc(),
              builder: (context, snapShot) {
                var MyData = snapShot.data;
                if (snapShot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: MyData?.length,
                      itemBuilder: (context, itemCount) {
                        var src = MyData?["hits"][itemCount]["webformatURL"];
                        return Container(
                          child: Image.network(src),
                        );
                      },
                    ),
                  );
                }else{
                  return Text("Failed");
                }
              },
            )
          ],
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
