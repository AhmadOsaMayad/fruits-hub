import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/repos/orders_repo/orders_repo.dart';
import 'package:meta/meta.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.ordersRepo) : super(AddOrderInitial());
  final OrdersRepo ordersRepo;
  Future<void> addOrder(orderEntity) async {
    emit(AddOrderLoading());
    final result = await ordersRepo.addOrder(orderEntity);
    result.fold(
      (failure) => emit(AddOrderFailure(failure.message)),
      (success) => emit(AddOrderSuccess()),
    );
  }
}
