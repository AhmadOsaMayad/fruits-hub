import 'dart:io';

import 'package:fruit_hub/core/constants/query_key_words.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/models/review_model.dart';

class ProductModel {
  final File image;
  final String name;
  final String code;
  final String description;
  final num price;
  final int quantity;
  final bool isFeatured;
  String? imageUrl;
  final String expDate;
  final num calPer100g;
  final num avgRating;
  final int avgCount;
  final int sellingCount;

  final List<ReviewModel> reviews;

  ProductModel({
    required this.image,
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.isFeatured,
    this.quantity = 1,
    this.imageUrl,
    required this.expDate,
    this.calPer100g = 0,
    this.avgRating = 0,
    this.avgCount = 0,
    this.sellingCount = 0,
    required this.reviews,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      image: File(json[QKWords.imageUrl]),
      name: json[QKWords.name],
      code: json[QKWords.code],
      description: json[QKWords.description],
      price: json[QKWords.price],
      quantity: json[QKWords.quantity],
      isFeatured: json[QKWords.isFeatured],
      imageUrl: json[QKWords.imageUrl],
      expDate: json[QKWords.expMonths],
      calPer100g: json[QKWords.calPer100g],
      avgRating: json[QKWords.avgRating],
      avgCount: json[QKWords.avgCount],
      sellingCount: json[QKWords.sellingCount],
      reviews:
          (json[QKWords.reviews] as List)
              .map((review) => ReviewModel.fromJson(review))
              .toList(),
    );
  }

  factory ProductModel.fromEntity(ProductEntity entity) {
    return ProductModel(
      image: entity.image,
      name: entity.name,
      code: entity.code,
      description: entity.description,
      price: entity.price,
      isFeatured: entity.isFeatured,
      quantity: entity.quantity,
      imageUrl: entity.imageUrl,
      expDate: entity.expDate,
      calPer100g: entity.calPer100g,
      avgRating: entity.avgRating,
      avgCount: entity.avgCount,
      sellingCount: entity.sellingCount,
      reviews:
          entity.reviews
              .map((review) => ReviewModel.fromEntity(review))
              .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      QKWords.name: name,
      QKWords.code: code,
      QKWords.description: description,
      QKWords.price: price,
      QKWords.quantity: quantity,
      QKWords.isFeatured: isFeatured,
      QKWords.imageUrl: imageUrl,
      QKWords.expMonths: expDate,
      QKWords.calPer100g: calPer100g,
      QKWords.avgRating: avgRating,
      QKWords.avgCount: avgCount,
      QKWords.sellingCount: sellingCount,
      QKWords.reviews: reviews.map((review) => review.toJson()).toList(),
    };
  }

  ProductEntity toEntity() {
    return ProductEntity(
      image: image,
      name: name,
      code: code,
      description: description,
      price: price,
      isFeatured: isFeatured,
      quantity: quantity,
      imageUrl: imageUrl,
      expDate: expDate,
      calPer100g: calPer100g,
      avgRating: avgRating,
      avgCount: avgCount,
      sellingCount: sellingCount,
      reviews: reviews.map((review) => review.toEntity()).toList(),
    );
  }

  static List<ProductEntity> toEntityList(List<ProductModel> products) {
    return products.map((product) => product.toEntity()).toList();
  }
}
