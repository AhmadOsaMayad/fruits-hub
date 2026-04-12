import 'package:flutter/widgets.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shipping/widgets/step_item_switcher.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CheckoutStepsList extends StatelessWidget {
  const CheckoutStepsList({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(stepsList(context).length, (index) {
        return StepItemSwitcher(
          stepNumber: '${index + 1}',
          title: stepsList(context)[index],
          isActive: index == 0,
        );
      }),
    );
  }
}

List<String> stepsList(BuildContext context) {
  return [
    S.of(context).shipping,
    S.of(context).address,
    S.of(context).payment,
    S.of(context).review,
  ];
}
