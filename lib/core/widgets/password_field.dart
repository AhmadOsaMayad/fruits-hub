import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({this.onSaved, super.key});
  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscure: obscure,
      onSaved: widget.onSaved,
      hintText: S.of(context).password,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () => setState(() => obscure = !obscure),
        child:
            obscure
                ? const Icon(Icons.remove_red_eye, color: Color(0xFFC9CECF))
                : const Icon(Icons.visibility_off, color: Color(0xFFC9CECF)),
      ),
    );
  }
}
