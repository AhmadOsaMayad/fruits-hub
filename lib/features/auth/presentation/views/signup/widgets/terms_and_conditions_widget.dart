import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup/widgets/custom_checkbox.dart';
import 'package:fruit_hub/features/auth/presentation/views/shared/tappable_suffix_text.dart';
import 'package:fruit_hub/generated/l10n.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key, required this.onChanged});
  final ValueChanged onChanged;

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: TappableSuffixText(
            textAlign: TextAlign.start,
            prefix: S.of(context).byCreatingAccount,
            suffix: S.of(context).termsAndConditions,
          ),
        ),
      ],
    );
  }
}
