import 'package:eatmore/screen/home/component/category_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryVerticalClipBar extends StatelessWidget {
  final Size size;
  const CategoryVerticalClipBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryItem(size: size),
          SizedBox(
            height: size.height / 100 * 2,
          ),
        ],
      ),
    );
  }
}
