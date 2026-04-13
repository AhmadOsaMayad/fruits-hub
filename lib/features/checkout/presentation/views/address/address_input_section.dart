import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:provider/provider.dart';

class AddressInputSection extends StatefulWidget {
  const AddressInputSection({
    super.key,
    required this.formKey,
    required this.valueListenable,
  });
  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;

  @override
  State<AddressInputSection> createState() => _AddressInputSectionState();
}

class _AddressInputSectionState extends State<AddressInputSection> {
  @override
  Widget build(BuildContext context) {
    var shippingAddress = context.watch<OrderEntity>().shippingAddress;
    var sText = S.of(context);
    return SingleChildScrollView(
      child: ValueListenableBuilder(
        valueListenable: widget.valueListenable,
        builder: (context, value, child) {
          return Form(
            key: widget.formKey,
            autovalidateMode: value,
            child: Column(
              children: [
                const SizedBox(height: 24),
                CustomTextFormField(
                  onSaved: (value) => shippingAddress.fullName = value,
                  hintText: sText.fullName,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  onSaved: (value) => shippingAddress.email = value!,
                  hintText: sText.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  onSaved: (value) => shippingAddress.phone = value!,
                  hintText: sText.phoneNumber,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  onSaved: (value) => shippingAddress.address = value!,
                  hintText: sText.address,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  onSaved: (value) => shippingAddress.country = value!,
                  hintText: sText.country,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  onSaved: (value) => shippingAddress.city = value!,
                  hintText: sText.city,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  onSaved: (value) => shippingAddress.aptSuite = value!,
                  hintText: sText.aptSuite,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16),
              ],
            ),
          );
        },
      ),
    );
  }
}
