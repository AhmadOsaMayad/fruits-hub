import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/features/checkout/presentation/views/widgets/active_step_item.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InActiveStepItem(
                title: S.of(context).shipping,
                stepNumber: '1',
                isActive: true,
              ),
              // NextPointerWidget(pointer: S.of(context).nextStepPointer),
              const NextPointerWidget(),
              InActiveStepItem(
                title: S.of(context).address,
                stepNumber: '2',
                isActive: true,
              ),
              // NextPointerWidget(pointer: S.of(context).nextStepPointer),
              const NextPointerWidget(),
              InActiveStepItem(
                title: S.of(context).payment,
                stepNumber: '3',
                isActive: true,
              ),
              // NextPointerWidget(pointer: S.of(context).nextStepPointer),
              const NextPointerWidget(),
              InActiveStepItem(
                title: S.of(context).review,
                stepNumber: '4',
                isActive: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NextPointerWidget extends StatelessWidget {
  const NextPointerWidget({super.key}); //required this.pointer});
  // final String pointer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 0),
      child: Text(
        S.of(context).nextStepPointer,
        style: AppTextStyles.bold13.copyWith(color: AppColors.primary),
      ),
    );
  }
}
