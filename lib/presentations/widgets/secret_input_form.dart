import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SecretInputForm extends StatefulWidget {
  final String hint;

  final TextEditingController controller;

  const SecretInputForm({
    super.key,
    required this.hint,
    required this.controller,
  });

  @override
  State<SecretInputForm> createState() => _SecretInputFormState();
}

class _SecretInputFormState extends State<SecretInputForm> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: GoogleFonts.nunito(),
        controller: widget.controller,
        cursorHeight: 20,
        autocorrect: false,
        obscureText: _visible,
        decoration: InputDecoration(
            labelText: widget.hint,
            suffixIcon: IconButton(
              icon: Icon(_visible ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _visible = !_visible;
                });
              },
            )));
  }
}
