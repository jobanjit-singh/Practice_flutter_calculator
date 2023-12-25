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

  late var focusNodeOne = FocusNode();
  late var focusNodeTwo = FocusNode();

  late String result = '';

  changeResult(String res) {
    setState(() {
      result = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
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
                  focusNode: focusNodeOne,
                ),
                const SizedBox(
                  height: 10,
                ),
                InputField(
                  hintText: "Enter the second number",
                  c: fieldTwo,
                  focusNode: focusNodeTwo,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Text(
                    result,
                    style: const TextStyle(
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
                        c1: fieldOne,
                        c2: fieldTwo,
                        f1: focusNodeOne,
                        f2: focusNodeTwo,
                        result: changeResult,
                      ),
                      ButtonCustom(
                        value: "2",
                        c1: fieldOne,
                        c2: fieldTwo,
                        f1: focusNodeOne,
                        f2: focusNodeTwo,
                        result: changeResult,
                      ),
                      ButtonCustom(
                        value: "3",
                        c1: fieldOne,
                        c2: fieldTwo,
                        f1: focusNodeOne,
                        f2: focusNodeTwo,
                        result: changeResult,
                      ),
                      ButtonCustom(
                        value: "+",
                        c1: fieldOne,
                        c2: fieldTwo,
                        f1: focusNodeOne,
                        f2: focusNodeTwo,
                        result: changeResult,
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
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
                      ButtonCustom(
                          value: "5",
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
                      ButtonCustom(
                          value: "6",
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
                      ButtonCustom(
                          value: "-",
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
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
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
                      ButtonCustom(
                          value: "8",
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
                      ButtonCustom(
                          value: "9",
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
                      ButtonCustom(
                          value: "*",
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 65,
                      ),
                      ButtonCustom(
                          value: "0",
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
                      ButtonCustom(
                          value: "C",
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
                      ButtonCustom(
                          value: "/",
                          c1: fieldOne,
                          c2: fieldTwo,
                          f1: focusNodeOne,
                          f2: focusNodeTwo,
                          result: changeResult),
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
