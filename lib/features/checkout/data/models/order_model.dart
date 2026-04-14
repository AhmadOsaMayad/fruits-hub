
import 'package:fruit_hub/core/constants/query_key_words.dart';
import 'package:fruit_hub/features/checkout/data/models/order_product_model.dart';
import 'package:fruit_hub/features/checkout/data/models/shipping_address_model.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:uuid/uuid.dart';

class OrderModel {
  final double totalPrice;
  final String uId;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProducts;
  final String paymentMethod;
  final String orderId;
  OrderModel(
      {required this.totalPrice,
      required this.uId,
      required this.orderId,
      required this.shippingAddressModel,
      required this.orderProducts,
      required this.paymentMethod});

  factory OrderModel.fromEntity(OrderEntity orderEntity) {
    return OrderModel(
      orderId: const Uuid().v4(),
      totalPrice: orderEntity.cartEntity.totalPrice().toDouble(),
      uId: orderEntity.uID,
      shippingAddressModel:
          ShippingAddressModel.fromEntity(orderEntity.shippingAddress),
      orderProducts: orderEntity.cartEntity.cartItems
          .map((e) => OrderProductModel.fromEntity(
                cartItemEntity: e,
              ))
          .toList(),
      paymentMethod: orderEntity.payWithCash! ? QKWords.cash : QKWords.paypal,
    );
  }
  toJson() => {
        QKWords.orderId: orderId,
        QKWords.totalPrice: totalPrice,
        QKWords.uId: uId,
        QKWords.orderStatus: 'pending',
        QKWords.orderDate: DateTime.now().toString(),
        QKWords.shippingAddress: shippingAddressModel.toJson(),
        QKWords.orderProducts: orderProducts.map((e) => e.toJson()).toList(),
        QKWords.paymentMethod: paymentMethod,
      };
}

// payment method
