import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Loader extends StatelessWidget {
  const Loader({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: s.width,
        height: s.height,
        child: Shimmer.fromColors(
            baseColor: Colors.white,
            highlightColor: Colors.grey.withOpacity(0.2),
            child: Center(child: CircularProgressIndicator())));
  }
}
