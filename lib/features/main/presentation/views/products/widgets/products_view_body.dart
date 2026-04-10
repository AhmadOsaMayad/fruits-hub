import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/core/widgets/search_text_field.dart';
import 'package:fruit_hub/features/main/presentation/views/products/widgets/products_result_header.dart';
import 'package:fruit_hub/features/main/presentation/views/shared/products_sliver_grid_bloc_builder.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    super.initState();
    getProds();
  }

  getProds() async {
    await context.read<ProductsCubit>().getProducts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHPadding),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 16),
                buildAppBar(
                  context,
                  title: S.of(context).products,
                  showBackButton: false,
                  showNotification: true,
                ),
                const SizedBox(height: 16),
                const SearchTextField(),
                const SizedBox(height: 16),
                ProductsResultHeader(
                  results: context.read<ProductsCubit>().productsLength,
                  onPressed: () {
                    // Navigator.pushNamed(context, BestSellingView.routeName);
                  },
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const ProductsSliverGridBlocBuilder(),
        ],
      ),
    );
  }
}
