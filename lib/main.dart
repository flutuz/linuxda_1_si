import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:linuxda_1_si/pages/home.dart';
import 'package:linuxda_1_si/pages/navbar_pages/account_page.dart';
import 'package:linuxda_1_si/pages/navbar_pages/mainpage.dart';
import 'package:linuxda_1_si/pages/navbar_pages/messages_page.dart';
import 'package:linuxda_1_si/pages/navbar_pages/orders_page.dart';
import 'package:linuxda_1_si/pages/navbar_pages/search_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ru', 'RU'),
          Locale('uz', 'UZ')
        ],
        path: 'assets/translations',
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: '30-may Homework',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        MainPage.id: (context) => MainPage(),
        OrdersPage.id: (context) => OrdersPage(),
        MessagesPage.id: (context) => MessagesPage(),
        AccountPage.id: (context) => AccountPage(),
        Searchpage.id: (context) => Searchpage(),
      },
    );
  }
}
