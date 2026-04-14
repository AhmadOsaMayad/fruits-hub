import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helpers/get_user.dart';
import 'package:fruit_hub/core/repos/orders_repo/orders_repo.dart';
import 'package:fruit_hub/core/services/get_it_service.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:fruit_hub/features/checkout/presentation/views/payment/widgets/add_order_bloc_consumer.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shared/checkout_view_body.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_entity.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});
  final CartEntity cartEntity;
  static const routeName = 'checkout';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOrderCubit(getIt.get<OrdersRepo>()),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: S.of(context).shipping,
          showNotification: false,
        ),
        body: Provider<OrderEntity>(
          create:
              (_) => OrderEntity(cartEntity: cartEntity, uID: getUser().uId),
          child: const AddOrderBlocConsumer(child: CheckoutViewBody()),
        ),
      ),
    );
  }
}
