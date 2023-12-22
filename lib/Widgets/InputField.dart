import 'dart:ui';

import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final TextEditingController c;
  const InputField({Key? key, required this.hintText, required this.c})
      : super(key: key);
  @override
  State<InputField> createState() => _InputField();
}

class _InputField extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return (TextField(
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.amber,
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.amber,
          width: 2,
        )),
        hintText: widget.hintText,
      ),
      cursorColor: Colors.amber,
      readOnly: true,
      showCursor: true,
      controller: widget.c,
    ));
  }
}
