import 'package:flutter/material.dart';
class App_bar extends StatelessWidget {
  const App_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Vistez UKREA "),
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.greenAccent),

    );
  }
}