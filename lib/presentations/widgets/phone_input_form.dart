import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneInputForm extends StatefulWidget {
  final TextEditingController controller;

  const PhoneInputForm({super.key, required this.controller});

  @override
  State<PhoneInputForm> createState() => _PhoneInputFormState();
}

class _PhoneInputFormState extends State<PhoneInputForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.bottom,
      style: const TextStyle(fontSize: 18),
      autocorrect: false,
      controller: widget.controller,
      onChanged: (value) => setState(() {}),
      decoration: InputDecoration(
        hintText: "Phone number",
        prefixIcon: Row(
          children: [
            const Text(
              "+62 ",
              style: TextStyle(color: Colors.black54, fontSize: 18),
            ),
            Container(
              height: 16,
              width: 1,
              color: Colors.black54,
            )
          ],
        ),
        prefixIconConstraints: const BoxConstraints(maxWidth: 45),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }
}
