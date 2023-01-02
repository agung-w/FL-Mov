import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';

class AddEmailPage extends StatefulWidget {
  const AddEmailPage({super.key});

  @override
  State<AddEmailPage> createState() => _AddEmailPageState();
}

class _AddEmailPageState extends State<AddEmailPage> {
  TextEditingController email = TextEditingController();
  bool valid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Add Email",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    style: const TextStyle(fontSize: 18),
                    autocorrect: false,
                    controller: email,
                    onChanged: (value) {
                      setState(() {
                        valid = EmailValidator.validate(value);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Email",
                        prefixIconConstraints: const BoxConstraints(),
                        errorText: valid != true && email.text.isNotEmpty
                            ? "Please provide valid email address"
                            : null))),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<UserBloc>()
                        .add(UserEvent.addEmail(email.text, context));
                  },
                  child: const Text("Confirm")),
            ),
          ]),
        ),
      ),
    );
  }
}
