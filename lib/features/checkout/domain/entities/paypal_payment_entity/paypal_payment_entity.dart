import 'package:fruit_hub/core/constants/query_key_words.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/checkout/domain/entities/paypal_payment_entity/amount.dart';
import 'package:fruit_hub/features/checkout/domain/entities/paypal_payment_entity/item_list.dart';

class PaypalPaymentEntity {
  Amount? amount;
  String? description;
  ItemList? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});

  factory PaypalPaymentEntity.fromEntity(OrderEntity entity) {
    return PaypalPaymentEntity(
      amount: Amount.fromEntity(entity),
      description: 'Payment description',
      itemList: ItemList.fromEntity(items: entity.cartEntity.cartItems),
    );
  }

  toJson() => {
    QKWords.amount: amount?.toJson(),
    QKWords.description: description,
    QKWords.itemList: itemList?.toJson(),
  };
}
