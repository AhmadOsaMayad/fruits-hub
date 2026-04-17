import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SvgAts extends StatelessWidget {
  const SvgAts(
    this.img, {
    super.key,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.contain,
  });
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit fit;
  final String img;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      img,
      height: height,
      width: width,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      fit: fit,
    );
  }
}
