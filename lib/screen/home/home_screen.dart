import 'package:eatmore/screen/home/component/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: HomeBody(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        padding: EdgeInsets.all(
          MediaQuery.of(context).size.width / 100 * 2,
        ),
        icon: Icon(
          FlutterIcons.hamburger_faw5s,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      title: Text(
        'EatMore',
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          padding: EdgeInsets.all(
            MediaQuery.of(context).size.width / 100 * 2,
          ),
          icon: Icon(
            AntDesign.user,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
      elevation: 0.0,
    );
  }
}
