import 'package:calculator/Components/ButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:calculator/Components/InputField.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
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
                const InputField(
                  hintText: "Enter the first number",
                ),
                const SizedBox(
                  height: 10,
                ),
                const InputField(hintText: "Enter the second number"),
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
                  child: const Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 8.0,
                    children: [
                      ButtonCustom(value: "1"),
                      ButtonCustom(value: "2"),
                      ButtonCustom(value: "3"),
                      ButtonCustom(value: "+"),
                      ButtonCustom(value: "4"),
                      ButtonCustom(value: "5"),
                      ButtonCustom(value: "6"),
                      ButtonCustom(value: "-"),
                      ButtonCustom(value: "7"),
                      ButtonCustom(value: "8"),
                      ButtonCustom(value: "9"),
                      ButtonCustom(value: "*"),
                      ButtonCustom(value: "0"),
                      ButtonCustom(value: "="),
                      ButtonCustom(value: "C"),
                      ButtonCustom(value: "/"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
