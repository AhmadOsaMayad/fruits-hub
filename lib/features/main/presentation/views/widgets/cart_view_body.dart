import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/cart_header.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/cart_item.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHPadding),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 16),
                buildAppBar(
                  context,
                  title: S.of(context).cart,
                  showBackButton: false,
                  showNotification: false,
                ),
                const SizedBox(height: 16),
                const CartHeader(),
                const SizedBox(height: 8),
                const CartItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
