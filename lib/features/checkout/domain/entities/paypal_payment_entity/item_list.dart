import 'package:fruit_hub/core/constants/query_key_words.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';

import 'item.dart';

class ItemList {
  List<ItemEntity>? items;

  ItemList({this.items});

  factory ItemList.fromEntity({required List<CartItemEntity> items}) {
    return ItemList(items: items.map((e) => ItemEntity.fromEntity(e)).toList());
  }

  Map<String, dynamic> toJson() => {
    QKWords.items: items?.map((e) => e.toJson()).toList(),
  };
}
