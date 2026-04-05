import 'package:flutter/material.dart';
import 'package:fruit_hub/features/best_selling/presentation/views/best_selling_view.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/home_view.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/products_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = 'main';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        onItemTapped: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: SafeArea(child: getCurrentView()),
    );
  }

  Widget getCurrentView() {
    return [
      const HomeView(),
      const ProductsView(),
      const BestSellingView(),
    ][currentIndex];
  }
}
