import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Languages extends StatefulWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Choose Your Language '),
      ),
      body: Row(
        children: [
          Container(
              child: IconButton(
            icon: Image.asset('assets/icons/tn.jpeg'),
            iconSize: 50,
            onPressed: () {
              var locale = Locale('ru', 'RU');
              Get.updateLocale(locale);
            },
          )),
          Container(
              child: IconButton(
            icon: Image.asset('assets/icons/fr.webp'),
            iconSize: 50,
            onPressed: () {
              var locale = Locale('es', 'ES');
              Get.updateLocale(locale);
            },
          )),
          Container(
              child: IconButton(
            icon: Image.asset('assets/icons/usa.webp'),
            iconSize: 50,
            onPressed: () {
              var locale = Locale('en', 'US');
              Get.updateLocale(locale);
            },
          )),
        ],
      ),
    );
  }
}
