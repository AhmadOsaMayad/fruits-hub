import 'package:fruit_hub/core/constants/query_key_words.dart';
import 'package:fruit_hub/features/checkout/domain/entities/shipping_address_entity.dart';

class ShippingAddressModel {
  String? fullName, email, address, city, country, phone, aptSuite;

  ShippingAddressModel({
    this.fullName,
    this.phone,
    this.address,
    this.aptSuite,
    this.city,
    this.email,
    this.country,
  });

  factory ShippingAddressModel.fromEntity(ShippingAddressEntity entity) {
    return ShippingAddressModel(
      fullName: entity.fullName,
      phone: entity.phone,
      address: entity.address,
      aptSuite: entity.aptSuite,
      city: entity.city,
      email: entity.email,
      country: entity.country,
    );
  }
  @override
  String toString() {
    return '$address $aptSuite $city';
  }

  toJson() {
    return {
      QKWords.name: fullName,
      QKWords.phone: phone,
      QKWords.address: address,
      QKWords.aptSuite: aptSuite,
      QKWords.city: city,
      QKWords.email: email,
      QKWords.country: country,
    };
  }
}
