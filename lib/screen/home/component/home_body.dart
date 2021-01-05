import 'package:eatmore/screen/home/component/category_vertical_clip_bar.dart';
import 'package:eatmore/screen/home/component/header_with_search_bar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: size),
          CategoryVerticalClipBar(size: size),
        ],
      ),
    );
  }
}
