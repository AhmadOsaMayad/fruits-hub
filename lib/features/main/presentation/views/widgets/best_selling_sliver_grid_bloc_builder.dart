import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/core/helpers/get_dummy_products.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/best_selling_sliver_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingSliverGridBlocBuilder extends StatelessWidget {
  const BestSellingSliverGridBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return BestSellingSliverGrid(products: state.products);
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.errorMessage)),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellingSliverGrid(products: getDummyProducts()),
          );
        }
      },
    );
  }
}
