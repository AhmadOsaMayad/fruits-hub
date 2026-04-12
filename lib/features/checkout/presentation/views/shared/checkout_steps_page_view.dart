import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shared/checkout_view_body.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: checkoutStepsPages().length,
        itemBuilder: (context, index) {
          return checkoutStepsPages()[index];
        },
      ),
    );
  }
}
