import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  static const String id = 'orders_page';

  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "manager",
          style: TextStyle(
              color:  Color(0xff28CA74), fontWeight: FontWeight.bold, fontSize: 40),
        ).tr(),
      ),
    );
  }
}
