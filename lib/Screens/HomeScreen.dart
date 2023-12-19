import 'package:flutter/material.dart';
import 'package:calculator/Views/HomeView.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Calculator",
        home: HomeView(),
      )
    );
  }
}