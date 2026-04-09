import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/constants/query_key_words.dart';
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
      List<ProductEntity> products =
          data
              .map((product) => ProductModel.fromJson(product).toEntity())
              .toList();
      return right(products);
    } on CustomExceptions catch (e) {
      return left(
        ServerFailure(
          message: 'ErrorMessage: ${e.message}  TO STRING: ${e.toString()}',
          code: e.code,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSelling() async {
    try {
      var data =
          await databaseService.getData(
                path: BackEndPoints.getProducts,
                query: {
                  QKWords.orderBy: QKWords.sellingCount,
                  QKWords.descending: true,
                  QKWords.limit: 10,
                },
              )
              as List<Map<String, dynamic>>;
      List<ProductEntity> products =
          data
              .map((product) => ProductModel.fromJson(product).toEntity())
              .toList();
      return right(products);
    } on CustomExceptions catch (e) {
      return left(
        ServerFailure(
          message: 'ErrorMessage: ${e.message}  TO STRING: ${e.toString()}',
          code: e.code,
        ),
      );
    }
  }
}
