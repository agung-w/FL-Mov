import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInputForm extends StatefulWidget {
  final String hint;

  final TextEditingController controller;

  final Widget? prefix;

  const TextInputForm(
      {super.key, required this.hint, required this.controller, this.prefix});

  @override
  State<TextInputForm> createState() => _TextInputFormState();
}

class _TextInputFormState extends State<TextInputForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        style: GoogleFonts.nunito(fontSize: 18),
        autocorrect: false,
        onChanged: (value) => setState(() {}),
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          prefixIconConstraints: const BoxConstraints(),
          // prefixStyle:
        ));
  }
}
