import 'package:flutter/material.dart';

class ButtonCustom extends StatefulWidget {
  final String value;

  const ButtonCustom({Key? key, required this.value}) : super(key: key);

  State<ButtonCustom> createState() => _ButtonCustom();
}

class _ButtonCustom extends State<ButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
        onPressed: () => {
              // hello
            },
        style: ButtonStyle(
          alignment: Alignment.center,
          elevation: MaterialStateProperty.all(5),
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.amberAccent),
        ),
        child: Text(
          widget.value,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        )));
  }
}
