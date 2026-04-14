import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/checkout/presentation/views/payment/widgets/payment_item.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:provider/provider.dart';

class OrderSummryWidget extends StatelessWidget {
  const OrderSummryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var sText = S.of(context);
    var orderEntity = context.read<OrderEntity>();
    return PaymentItem(
      title: sText.orderSummary,
      child: Column(
        children: [
          Row(
            children: [
              Text('${sText.subTotal} :', style: AppTextStyles.bold13),
              const Spacer(),
              Text(
                '\$${orderEntity.cartEntity.totalPrice()}',
                style: AppTextStyles.bold13,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                '${sText.deliveryFee} :',
                style: AppTextStyles.semiBold13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              ),
              const Spacer(),
              Text(
                '\$30',
                style: AppTextStyles.semiBold13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              ),
            ],
          ),
          const SizedBox(height: 9),
          const Divider(thickness: .5, color: Color(0xFFCACECE)),
          const SizedBox(height: 9),
          Row(
            children: [
              Text(sText.total, style: AppTextStyles.bold16),
              const Spacer(),
              Text(
                '\$${orderEntity.cartEntity.totalPrice() + 30}',
                style: AppTextStyles.bold16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
