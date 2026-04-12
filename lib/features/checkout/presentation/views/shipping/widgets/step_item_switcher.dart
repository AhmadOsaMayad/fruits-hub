import 'package:flutter/widgets.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shipping/widgets/active_step_item.dart';

class StepItemSwitcher extends StatelessWidget {
  const StepItemSwitcher({
    super.key,
    required this.stepNumber,
    required this.title,
    required this.isActive,
  });
  final String stepNumber;
  final String title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: InActiveStepItem(
        stepNumber: stepNumber,
        title: title,
        isActive: false,
      ),
      secondChild: InActiveStepItem(
        stepNumber: stepNumber,
        title: title,
        isActive: true,
      ),
      crossFadeState:
          isActive ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
    );
  }
}
