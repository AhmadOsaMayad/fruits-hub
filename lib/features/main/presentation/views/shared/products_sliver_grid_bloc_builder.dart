import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/core/helpers/get_auth_errors_messages.dart';
import 'package:fruit_hub/core/helpers/get_dummy_products.dart';
import 'package:fruit_hub/features/main/presentation/views/shared/products_sliver_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsSliverGridBlocBuilder extends StatelessWidget {
  const ProductsSliverGridBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return ProductsSliverGrid(products: state.products);
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child:
                  state.code != null
                      ? Text(getErrorMessage(context, state.code!))
                      : Text(state.errorMessage),
            ),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: ProductsSliverGrid(products: getDummyProducts()),
          );
        }
      },
    );
  }
}
