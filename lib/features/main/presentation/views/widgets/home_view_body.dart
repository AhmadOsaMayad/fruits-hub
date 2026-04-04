import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/search_text_field.dart';
import 'package:fruit_hub/features/best_selling/presentation/views/best_selling_view.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/best_selling_header.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/best_selling_sliver_grid.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/featured_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const CustomHomeAppBar(),
                const SizedBox(height: 16),
                const SearchTextField(),
                const SizedBox(height: 16),
                const FeaturedList(),
                const SizedBox(height: 16),
                BestSellingHeader(
                  onPressed: () {
                    Navigator.pushNamed(context, BestSellingView.routeName);
                  },
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const BestSellingSliverGrid(),
        ],
      ),
    );
  }
}
