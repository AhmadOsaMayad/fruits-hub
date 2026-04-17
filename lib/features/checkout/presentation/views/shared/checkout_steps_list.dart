import 'package:flutter/widgets.dart';
import 'package:fruit_hub/core/utils/app_defs.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shipping/widgets/step_item_switcher.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CheckoutStepsList extends StatelessWidget {
  const CheckoutStepsList({
    super.key,
    required this.currentPageIndex,
    required this.pageController,
  });
  final int currentPageIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(stepsList(context).length, (index) {
        return GestureDetector(
          onTap: () {
            if (currentPageIndex >= index) {
              pageController.animateToPage(
                index,
                duration: kDefDuration,
                curve: Curves.easeIn,
              );
            }
          },
          child: StepItemSwitcher(
            stepNumber: '${index + 1}',
            title: stepsList(context)[index],
            isActive: index <= currentPageIndex,
          ),
        );
      }),
    );
  }
}

List<String> stepsList(BuildContext context) {
  var sText = S.of(context);
  return [sText.shipping, sText.address, sText.payment, sText.review];
}
