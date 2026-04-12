import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shipping/widgets/shipping_item.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        ShippingItem(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          isSelected: selectedIndex == 0,
          title: S.of(context).cashOnDelivery,
          subTitle: S.of(context).deliveryAtStore,
          price: "40",
        ),
        const SizedBox(height: 16),
        ShippingItem(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          isSelected: selectedIndex == 1,
          title: S.of(context).payInAdvance,
          subTitle: S.of(context).selectPaymentMethod,
          price: "30",
        ),
      ],
    );
  }
}
