import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/fruit_item.dart';

class BestSellingSliverGrid extends StatelessWidget {
  const BestSellingSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
        childAspectRatio: 163 / 214,
      ),

      itemCount: 10,
      itemBuilder: (context, index) {
        return FruitItem();
      },
    );
  }
}
