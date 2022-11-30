import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LargeButton extends StatelessWidget {
  final function;
  final String title;
  final String? icon;

  const LargeButton(
      {super.key, required this.function, required this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
          onPressed: () async {
            function;
          },
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black, width: 0.5),
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              textStyle: const TextStyle(fontWeight: FontWeight.normal)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Image(width: 30, height: 30, image: AssetImage(icon!)),
              Text(title),
            ],
          )),
    );
  }
}
