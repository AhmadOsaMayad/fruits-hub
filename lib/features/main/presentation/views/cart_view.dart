import 'package:flutter/material.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CartViewBodyBlocBuilder();
  }
}

class CartViewBodyBlocBuilder extends StatelessWidget {
  const CartViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return const CartViewBody();
  }
}
