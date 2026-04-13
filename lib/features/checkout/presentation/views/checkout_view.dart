import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shared/checkout_view_body.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_entity.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});
  final CartEntity cartEntity;
  static const routeName = 'checkout';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: S.of(context).shipping,
        showNotification: false,
      ),
      body: Provider.value(
        value: OrderEntity(cartEntity: cartEntity),
        child: const CheckoutViewBody()),
    );
  }
}
