import 'package:flutter/material.dart';

class ButtonCustom extends StatefulWidget {
  final String value;
  final TextEditingController c1, c2;
  final FocusNode f1, f2;
  ButtonCustom({
    Key? key,
    required this.value,
    required this.c1,
    required this.c2,
    required this.f1,
    required this.f2,
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
                  widget.c1.clear();
                  widget.c2.clear();
                } else {
                  if (widget.f1.hasFocus) {
                    widget.c1.text += widget.value;
                  } else {
                    widget.c2.text += widget.value;
                  }
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
