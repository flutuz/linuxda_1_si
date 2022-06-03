import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  static const String id = 'madwin';

  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "account",
          style: TextStyle(
              color: Color(0xff28CA74),
              fontWeight: FontWeight.bold,
              fontSize: 40),
        ).tr(),
      ),
    );
  }
}
