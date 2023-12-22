import 'package:calculator/Widgets/ButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:calculator/Widgets/InputField.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  late var fieldOne = TextEditingController(text: "");
  late var fieldTwo = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Calculator",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InputField(
                  hintText: "Enter the first number",
                  c: fieldOne,
                ),
                const SizedBox(
                  height: 10,
                ),
                InputField(hintText: "Enter the second number", c: fieldTwo),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: const Text(
                    "0",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonCustom(
                        value: "1",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "2",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "3",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "+",
                        c: fieldOne,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonCustom(
                        value: "4",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "5",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "6",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "-",
                        c: fieldOne,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonCustom(
                        value: "7",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "8",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "9",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "*",
                        c: fieldOne,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonCustom(
                        value: "0",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "=",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "C",
                        c: fieldOne,
                      ),
                      ButtonCustom(
                        value: "/",
                        c: fieldOne,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
