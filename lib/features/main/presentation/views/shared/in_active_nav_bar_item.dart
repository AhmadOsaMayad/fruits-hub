import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/svg_ats.dart';

class InActiveNavBarItem extends StatelessWidget {
  const InActiveNavBarItem({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Center(child: SvgAts(icon, height: 20, width: 20));
  }
}
