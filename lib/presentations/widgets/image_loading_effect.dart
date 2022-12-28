import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageLoadingEffect extends StatelessWidget {
  const ImageLoadingEffect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: const Color(0xFFBDBDBD),
        highlightColor: const Color(0xFFFFFFFF),
        child: Container(
          color: const Color(0xFF9E9E9E),
        ));
  }
}
