import 'package:flutter/material.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const routeName = 'main';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(child: HomeView()),
    );
  }
}
