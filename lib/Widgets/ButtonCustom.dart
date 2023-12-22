import 'package:flutter/material.dart';

class ButtonCustom extends StatefulWidget {
  final String value;
  final TextEditingController c;
  ButtonCustom({
    Key? key,
    required this.value,
    required this.c,
  }) : super(key: key);

  State<ButtonCustom> createState() => _ButtonCustom();
}

class _ButtonCustom extends State<ButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
        onPressed: () => {
              setState(() {
                if (widget.value == "=") {
                } else if (widget.value == "+") {
                } else if (widget.value == "-") {
                } else if (widget.value == "*") {
                } else if (widget.value == "/") {
                } else if (widget.value == "C") {
                  widget.c.clear();
                } else {
                  widget.c.text += widget.value;
                }
              })
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
