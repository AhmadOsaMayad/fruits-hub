import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/views/payment/widgets/order_summary_widget.dart';
import 'package:fruit_hub/features/checkout/presentation/views/payment/widgets/shipping_address_widget.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        const OrderSummryWidget(),
        const SizedBox(height: 16),
        ShippingAddressWidget(pageController: pageController),
      ],
    );
  }
}
