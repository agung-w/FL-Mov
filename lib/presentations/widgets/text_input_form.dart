import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInputForm extends StatelessWidget {
  final String hint;

  final TextEditingController controller;

  final Widget? prefix;

  const TextInputForm(
      {super.key, required this.hint, required this.controller, this.prefix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: GoogleFonts.nunito(),
        cursorHeight: 20,
        autocorrect: false,
        controller: controller,
        decoration: InputDecoration(
          prefix: prefix,
        ));
  }
}
