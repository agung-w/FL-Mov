import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class DraggableBottomModal extends StatelessWidget {
  final Widget header;

  final bool isScrolable;

  final Widget body;

  const DraggableBottomModal(
      {super.key,
      required this.header,
      required this.isScrolable,
      required this.body});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.9,
        maxChildSize: 0.9,
        minChildSize: 0.6,
        builder: (BuildContext context, ScrollController scrollController) =>
            Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      top: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                      child: SizedBox(height: 75, child: header),
                    ),
                  ],
                ),
                if (isScrolable == true) ...{
                  Container(
                    height: 6,
                    color: Colors.black12,
                  ),
                },
                body
              ],
            ));
  }
}
