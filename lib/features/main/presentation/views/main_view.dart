import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/best_selling/presentation/views/best_selling_view.dart';
import 'package:fruit_hub/features/main/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/main/presentation/views/cart_view.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:fruit_hub/features/main/presentation/views/home_view.dart';
import 'package:fruit_hub/features/main/presentation/views/products_view.dart';

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
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavBar(
          onItemTapped: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: SafeArea(
          child: IndexedStack(
            index: currentIndex,
            children: const [
              HomeView(),
              ProductsView(),
              CartView(),
              BestSellingView(),
            ],
          ),
        ),
      ),
    );
  }
}
