import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  static const String id = 'mainswcc';

  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "messages",
          style: TextStyle(
              color: Color(0xff28CA74),
              fontWeight: FontWeight.bold,
              fontSize: 40),
        ).tr(),
      ),
    );
  }

}
