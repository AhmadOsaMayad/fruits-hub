import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helpers/build_snack_bar.dart';
import 'package:fruit_hub/core/widgets/loadable_body.dart';
import 'package:fruit_hub/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:fruit_hub/generated/l10n.dart';

class AddOrderBlocConsumer extends StatelessWidget {
  const AddOrderBlocConsumer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
        if (state is AddOrderFailure) {
          showSnackBar(context, state.errorMessage);
        } else if (state is AddOrderSuccess) {
          showSnackBar(context, S.of(context).orderAddedSuccessfully);
        }
      },
      builder: (context, state) {
        return LoadableBody(isLoading: state is AddOrderLoading, child: child);
      },
    );
  }
}
