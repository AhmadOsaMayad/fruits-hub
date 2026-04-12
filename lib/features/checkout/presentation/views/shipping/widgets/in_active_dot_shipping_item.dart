import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/static_decoration.dart';

class InActiveDotShihppingItem extends StatelessWidget {
  const InActiveDotShihppingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: AppDeco.inActiveDotShippingItem,
    );
  }
}
