import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneInputForm extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final Widget? prefix;

  const PhoneInputForm(
      {super.key, required this.hint, required this.controller, this.prefix});

  @override
  State<PhoneInputForm> createState() => _PhoneInputFormState();
}

class _PhoneInputFormState extends State<PhoneInputForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.bottom,
      style: GoogleFonts.nunito(fontSize: 18),
      autocorrect: false,
      controller: widget.controller,
      onChanged: (value) => setState(() {}),
      decoration: InputDecoration(
        prefixIcon: widget.prefix,
        prefixIconConstraints: const BoxConstraints(maxWidth: 45),
        // prefixStyle:
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }
}
