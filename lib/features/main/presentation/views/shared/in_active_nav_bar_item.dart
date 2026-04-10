import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class InActiveNavBarItem extends StatelessWidget {
  const InActiveNavBarItem({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Center(child: SvgPicture.asset(icon, height: 20, width: 20));
  }
}
