import 'package:flutter/material.dart';

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
        style: const TextStyle(fontSize: 18),
        controller: widget.controller,
        autocorrect: false,
        obscureText: !_visible,
        decoration: InputDecoration(
            hintText: widget.hint,
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
