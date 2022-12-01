import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeInputWithIcon extends StatelessWidget {
  final IconData? icon;
  final String? hint;
  final bool isSecret;
  const LargeInputWithIcon(
      {super.key, this.icon, this.hint, required this.isSecret});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        style: GoogleFonts.nunito(),
        cursorHeight: 20,
        autocorrect: false,
        obscureText: isSecret,
        decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(
              icon,
              color: Colors.black,
            )),
      ),
    );
  }
}
