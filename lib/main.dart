import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/features/news_headline/view/new_headline.dart';
import 'package:news/features/search_news/view/search_news.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),

      getPages: [
        GetPage(name: "/news_headline", page: ()=> NewsHeadline()),
        GetPage(name: "/search_news", page: ()=> SearchNews()),
      ],
      initialRoute: "/news_headline",
    );
  }
}

