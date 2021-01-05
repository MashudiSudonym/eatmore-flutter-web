import 'package:eatmore/screen/home/component/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HeaderWithSearchBar extends StatelessWidget {
  final Size size;

  const HeaderWithSearchBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        size.width / 100 * 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose the',
            style: TextStyle(
              fontSize: size.width / 100 * 5,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Food you love',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: size.width / 100 * 5,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: size.width / 100 * 3,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: size.width / 100 * 2,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(10, 10),
                    blurRadius: 20,
                    spreadRadius: 10,
                    color: Colors.grey[400].withOpacity(0.2),
                  ),
                ]),
            child: TextField(
              onChanged: (value) {},
              cursorHeight:
                  (kIsWeb) ? size.width / 100 * 4 : size.width / 100 * 8,
              style: TextStyle(
                fontSize:
                    (kIsWeb) ? size.width / 100 * 3 : size.width / 100 * 5,
              ),
              decoration: InputDecoration(
                hoverColor: Colors.white,
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search for food item',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize:
                      (kIsWeb) ? size.width / 100 * 3 : size.width / 100 * 5,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: IconButton(
                  icon: Icon(
                    AntDesign.search1,
                    color: kPrimaryColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.width / 100 * 10,
          ),
          Text(
            'Categories',
            style: TextStyle(
              fontSize:
                  (kIsWeb) ? size.width / 100 * 2.5 : size.width / 100 * 4.5,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
