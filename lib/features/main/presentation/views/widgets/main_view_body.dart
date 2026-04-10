import 'package:flutter/material.dart';
import 'package:fruit_hub/features/best_selling/presentation/views/best_selling_view.dart';
import 'package:fruit_hub/features/main/presentation/views/cart_view.dart';
import 'package:fruit_hub/features/main/presentation/views/home_view.dart';
import 'package:fruit_hub/features/main/presentation/views/products_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentIndex,
      children: const [
        HomeView(),
        ProductsView(),
        CartView(),
        BestSellingView(),
      ],
    );
  }
}
