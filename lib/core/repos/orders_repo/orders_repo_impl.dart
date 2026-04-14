import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/failures.dart';
import 'package:fruit_hub/core/repos/orders_repo/orders_repo.dart';
import 'package:fruit_hub/core/services/database_service.dart';
import 'package:fruit_hub/core/utils/back_end_points.dart';
import 'package:fruit_hub/features/checkout/data/models/order_model.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DatabaseService fireStoreService;

  OrdersRepoImpl({required this.fireStoreService});
  @override
  Future<Either<Failure, void>> addOrder(OrderEntity orderEntity) async {
    try {
      await fireStoreService.addData(
        path: BackEndPoints.addOrder,
        data: OrderModel.fromEntity(orderEntity).toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left( ServerFailure(message:  e.toString(),));
    }
  }
}
