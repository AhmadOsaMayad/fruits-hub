import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/errors/failures.dart';
import 'package:fruit_hub/core/models/product_model.dart';
import 'package:fruit_hub/core/repos/products_repo.dart';
import 'package:fruit_hub/core/services/database_service.dart';
import 'package:fruit_hub/core/utils/back_end_points.dart';

class ProductsRepoImpl implements ProductsRepo {
  final DatabaseService databaseService;

  ProductsRepoImpl({required this.databaseService});
  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var data =
          await databaseService.getData(path: BackEndPoints.getProducts)
              as List<Map<String, dynamic>>;
      List<ProductModel> products =
          data.map((product) => ProductModel.fromJson(product)).toList();
      return right(ProductModel.toEntityList(products));
    } on CustomExceptions catch (e) {
      return left(
        ServerFailure('ErrorMessage: ${e.message}  TO STRING: ${e.toString()}'),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSelling() async {
    // TODO: implement getBestSelling
    throw UnimplementedError();
  }
}


/* .then((data) {
      List<ProductEntity> products = (data as List)
          .map((product) => ProductEntity(
                image: product['image'],
                name: product['name'],
                code: product['code'],
                description: product['description'],
                price: product['price'],
                isFeatured: product['isFeatured'],
                expDate: product['expDate'],
                calPer100g: product['calPer100g'],
                avgRating: product['avgRating'],
                avgCount: product['avgCount'],
                sellingCount: product['sellingCount'],
                reviews: (product['reviews'] as List)
                    .map((review) => ReviewEntity(
                          revName: review['revName'],
                          revImage: review['revImage'],
                          revDesc: review['revDesc'],
                          revRating: review['revRating'],
                          revDate: review['revDate'],
                        ))
                    .toList(),
              ))
          .toList();
      return Left(Success(products));
    }).catchError((error) {
     */