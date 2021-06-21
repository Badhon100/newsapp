import 'package:flutter/material.dart';
import 'package:news/core/widget/drawer.dart';

class SearchNews extends StatelessWidget {
  const SearchNews({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Headline"),
      ),
      drawer: getAppDrawer(),
    );
  }
}