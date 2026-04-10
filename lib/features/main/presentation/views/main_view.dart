import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/main/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/main_view_body_bloc_listener.dart';

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
              if (currentIndex != index) {
                currentIndex = index;
                log('tapped index: $index');
              }
            });
          },
        ),
        body: SafeArea(
          child: MainViewBodyBlocListener(currentIndex: currentIndex),
        ),
      ),
    );
  }
}
