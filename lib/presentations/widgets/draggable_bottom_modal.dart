import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class DraggableBottomModal extends StatelessWidget {
  final Widget content;

  const DraggableBottomModal({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.9,
      maxChildSize: 0.9,
      minChildSize: 0.6,
      builder: (BuildContext context, ScrollController scrollController) =>
          content,
    );
  }
}
