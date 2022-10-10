//home_screen.dart <- Snake Case:Estructura de serpiente
//homeScreen.dart <- Camel Case:Estructura de escalera

import 'package:flutter/material.dart';

class HolaScreen extends StatelessWidget {
  const HolaScreen({super.key});

  static const colorBgAppBar = Colors.blueGrey;
  static const colorTxtAppBar = Color.fromARGB(0, 248, 247, 247);
  static const colorShadAppBar = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi App"),
        backgroundColor: Colors.lightGreen,
        shadowColor: colorBgAppBar,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: colorTxtAppBar, fontSize: 30),
        leading: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Image.asset(
            "images/305163953054211.png",
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 252, 54),
      body: const Center(
        child: Text("Saludos desde HomeScreen"),
      ),
    );
  }
}
