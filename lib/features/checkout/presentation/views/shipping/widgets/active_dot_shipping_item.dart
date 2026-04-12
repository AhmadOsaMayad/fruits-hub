import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/static_decoration.dart';

class ActiveDotShihppingItem extends StatelessWidget {
  const ActiveDotShihppingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: AppDeco.inActiveDotShippingItem,
      child: Container(
        width: 18,
        height: 18,
        decoration: AppDeco.activeDotShippingItem,
      ),
    );
  }
}
