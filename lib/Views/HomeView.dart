import 'package:flutter/material.dart';
import 'package:calculator/Components/InputField.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Calculator",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(
                  height: 10,
                ),
               InputField(hintText: "Enter the first number",),
                SizedBox(
                  height: 10,
                ),
                InputField(hintText: "Enter the second number")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
