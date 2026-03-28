import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/search_text_field.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 16),
              CustomHomeAppBar(),
              SizedBox(height: 16),
              SearchTextField(),
              SizedBox(height: 16),
              FeaturedItem(),
            ],
          ),
        ),
      ],
    );
  }
}
