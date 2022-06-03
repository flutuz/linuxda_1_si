import 'package:flutter/material.dart';
import 'package:linuxda_1_si/pages/navbar_pages/account_page.dart';
import 'package:linuxda_1_si/pages/navbar_pages/mainpage.dart';
import 'package:linuxda_1_si/pages/navbar_pages/messages_page.dart';
import 'package:linuxda_1_si/pages/navbar_pages/orders_page.dart';
import 'package:linuxda_1_si/pages/navbar_pages/search_page.dart';
class HomePage extends StatefulWidget {
  static const String id = 'home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<Widget> navBarItems = <Widget>[
    MainPage(),
    MessagesPage(),
    Searchpage(),
    OrdersPage(),
    AccountPage()
  ];
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: navBarItems.elementAt(selectedPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        currentIndex: selectedPage,
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_outlined,
              size:  30
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.mail_outline,
              size:  30
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.search,
              size:  30
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.list_alt,
              size:  30
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.account_circle_outlined,
              size:  30
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff28CA74),
        unselectedItemColor: Colors.black38,
      ),
    );
  }
}
