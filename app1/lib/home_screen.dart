//home_screen.dart <- Snake Case:Estructura de serpiente
//homeScreen.dart <- Camel Case:Estructura de escalera

import 'package:flutter/material.dart';

class HolaScreen extends StatefulWidget {
  const HolaScreen({super.key});

  static const colorBgAppBar = Colors.blueGrey;
  static const colorTxtAppBar = Color(0xFFFFFFFF);
  static const colorShadAppBar = Colors.black87;

  @override
  State<HolaScreen> createState() => _HolaScreenState();
}

class _HolaScreenState extends State<HolaScreen> {
  int contador = 0;
//los dos tipos de widgets: statelesswidget y statefulwidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Mi App"),
          backgroundColor: HolaScreen.colorBgAppBar,
          shadowColor: HolaScreen.colorShadAppBar,
          centerTitle: true,
          titleTextStyle:
              const TextStyle(color: HolaScreen.colorTxtAppBar, fontSize: 30),
          leading: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset(
                "images/drewhouse.png",
              ))),
      backgroundColor: const Color.fromARGB(133, 0, 0, 0),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Veces que haz hecho click",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                contador.toString(),
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "Comic Sans"),
              ),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                contador++;
                setState(() {});
              }),
          FloatingActionButton(
              child: const Icon(Icons.delete),
              onPressed: () {
                contador--;
                setState(() {});
              }),
        ],
      ),
    );
  }
}
