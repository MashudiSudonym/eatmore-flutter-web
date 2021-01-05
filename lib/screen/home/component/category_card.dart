import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Size size;
  final int position;
  final String categoryName;
  final String categoryImage;

  const CategoryCard({
    Key key,
    @required this.size,
    @required this.position,
    @required this.categoryName,
    @required this.categoryImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: size.width / 100 * 4,
        top: size.width / 100 * 2,
        bottom: size.width / 100 * 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 25),
            blurRadius: 40,
            color: Colors.grey[400].withOpacity(0.2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: (kIsWeb) ? size.width / 100 * 15 : size.width / 100 * 35,
            height: (kIsWeb) ? size.width / 100 * 25 : size.width / 100 * 45,
            margin: EdgeInsets.only(
              left: size.width / 100 * 2,
              right: size.width / 100 * 2,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  categoryImage,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: size.width / 100 * 2),
            child: Text(
              categoryName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize:
                    (kIsWeb) ? size.width / 100 * 2 : size.width / 100 * 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
