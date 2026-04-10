import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helpers/build_snack_bar.dart';
import 'package:fruit_hub/features/main/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/main_view_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class MainViewBodyBlocListener extends StatelessWidget {
  const MainViewBodyBlocListener({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartProductAdded) {
          buildSnackBar(context, S.of(context).productAddedToCart);
        } else if (state is CartProductRemoved) {
          buildSnackBar(context, S.of(context).productRemovedFromCart);
        } else if (state is CartProductMaxQuantity) {
          buildSnackBar(context, S.of(context).maxQuantityReached);
        }
      },
      child: MainViewBody(currentIndex: currentIndex),
    );
  }
}
