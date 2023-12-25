import 'package:flutter/material.dart';

class ButtonCustom extends StatefulWidget {
  final String value;
  final TextEditingController c1, c2;
  final FocusNode f1, f2;
  final Function(String) result;
  ButtonCustom(
      {Key? key,
      required this.value,
      required this.c1,
      required this.c2,
      required this.f1,
      required this.f2,
      required this.result})
      : super(key: key);

  State<ButtonCustom> createState() => _ButtonCustom();
}

class _ButtonCustom extends State<ButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
        onPressed: () => {
              setState(() {
                if (widget.value == "+" ||
                    widget.value == "-" ||
                    widget.value == "*" ||
                    widget.value == "/") {
                  if (widget.c1.text.isEmpty || widget.c2.text.isEmpty) {
                    widget.result("Your fields are empty");
                  } else {
                    if (widget.value == "+") {
                      widget.result((int.parse(widget.c1.text) +
                              int.parse(widget.c2.text))
                          .toString());
                    } else if (widget.value == "-") {
                      widget.result((int.parse(widget.c1.text) -
                              int.parse(widget.c2.text))
                          .toString());
                    } else if (widget.value == "*") {
                      widget.result((int.parse(widget.c1.text) *
                              int.parse(widget.c2.text))
                          .toString());
                    } else {
                      widget.result((int.parse(widget.c1.text) /
                              int.parse(widget.c2.text))
                          .toString());
                    }
                  }
                } else if (widget.value == "C") {
                  widget.c1.clear();
                  widget.c2.clear();
                  widget.result('');
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
