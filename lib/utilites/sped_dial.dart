import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PopUP extends StatefulWidget {
  const PopUP({Key? key}) : super(key: key);

  @override
  State<PopUP> createState() => _PopUPState();
}

class _PopUPState extends State<PopUP> {
  bool forEN = true;
  bool forRU = false;
  bool forUZ = false;
  String val(){
    if(forEN){
      return "EN";
    } else if(forRU){
      return "RU";
    } else {
      return "UZ";
    }
  }

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'EN';
    return DropdownButton<String>(
      value: val(),
      icon: Icon(
        Icons.public,
        color: Colors.greenAccent,
      ),
      elevation: 16,
      style: TextStyle(
          color: Colors.greenAccent, fontWeight: FontWeight.bold, fontSize: 18),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['RU', 'EN', 'UZ']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          onTap: () {
            if (value == "EN") {
              myToast();
              context.locale = Locale('en', "US");
              setState(() {
                forEN = true;
                forRU = false;
                forUZ = false;
              });
            } else if (value == "UZ") {
              myToast();
              context.locale = Locale('uz', "UZ");
              setState(() {
                forEN = false;
                forRU = false;
                forUZ = true;
              });
            } else if (value == "RU") {
              myToast();
              context.locale = Locale('ru', "RU");
              setState(() {
                forEN = false;
                forRU = true;
                forUZ = false;
              });
            }
          },
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  void myToast() {
    Fluttertoast.showToast(
        msg: "toast".tr(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
