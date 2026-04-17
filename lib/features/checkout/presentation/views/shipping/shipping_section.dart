import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shipping/widgets/shipping_item.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:provider/provider.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});
  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;
  var deliveryFee = 30;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var sText = S.of(context);
    var orderEntity = context.watch<OrderEntity>();
    return Column(
      children: [
        const SizedBox(height: 32),
        ShippingItem(
          onTap: () {
            setState(() {
              selectedIndex = 0;
              orderEntity.payWithCash = true;
            });
          },
          isSelected: selectedIndex == 0,
          title: sText.cashOnDelivery,
          subTitle: sText.deliveryAtStore,
          price: '${orderEntity.cartEntity.totalPrice() + deliveryFee}',
        ),
        const SizedBox(height: 16),
        ShippingItem(
          onTap: () {
            setState(() {
              selectedIndex = 1;
              orderEntity.payWithCash = true;
            });
          },
          isSelected: selectedIndex == 1,
          title: sText.payInAdvance,
          subTitle: sText.selectPaymentMethod,
          price: '${orderEntity.cartEntity.totalPrice()}',
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
