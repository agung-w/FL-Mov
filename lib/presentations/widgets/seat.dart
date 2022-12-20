import 'package:flutter/material.dart';

class Seat extends StatelessWidget {
  final String seatNumber;
  final bool isEnable;
  final bool isSelected;
  final Function onTap;

  const Seat(
      {super.key,
      required this.seatNumber,
      required this.isEnable,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (!isEnable) {
            onTap();
          }
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(2, 2, 2, 0),
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: isEnable
                  ? Colors.white
                  : isSelected
                      ? Colors.blue
                      : Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
                child: Text(
              seatNumber,
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? Colors.white : Colors.black,
              ),
            )),
          ),
        ));
  }
}
