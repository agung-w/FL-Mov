import 'package:flutter/material.dart';

class DraggableSheet extends StatelessWidget {
  final Widget child;

  const DraggableSheet({required this.child});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.9,
        maxChildSize: 0.9,
        minChildSize: 0.6,
        builder: (BuildContext context, ScrollController scrollController) =>
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black87),
                      ),
                    ),
                    child
                  ]),
            ));
  }
}
