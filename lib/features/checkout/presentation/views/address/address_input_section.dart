import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class AddressInputSection extends StatefulWidget {
  const AddressInputSection({super.key});

  @override
  State<AddressInputSection> createState() => _AddressInputSectionState();
}

class _AddressInputSectionState extends State<AddressInputSection> {
  late String userName, email, phone, address, city, aptSuite;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24),
          CustomTextFormField(
            onSaved: (value) => userName = value!,
            hintText: S.of(context).fullName,
            keyboardType: TextInputType.name,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) => email = value!,
            hintText: S.of(context).email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) => phone = value!,
            hintText: S.of(context).phoneNumber,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) => address = value!,
            hintText: S.of(context).address,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) => city = value!,
            hintText: S.of(context).city,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) => aptSuite = value!,
            hintText: S.of(context).aptSuite,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
