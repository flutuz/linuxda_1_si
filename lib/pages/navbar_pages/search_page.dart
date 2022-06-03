import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  static const String id = 'scscmain';

  const Searchpage({Key? key}) : super(key: key);

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "search_page",
          style: TextStyle(
              color: Color(0xff28CA74),
              fontWeight: FontWeight.bold,
              fontSize: 40),
        ).tr(),
      ),
    );
  }
}
