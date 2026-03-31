import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/best_selling/presentation/views/widgets/best_selling_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const routeName = 'best_selling';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.of(context).bestSelling),
      body: const BestSellingBody(),
    );
  }
}
