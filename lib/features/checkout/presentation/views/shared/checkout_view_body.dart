import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/checkout/presentation/views/address/address_input_section.dart';
import 'package:fruit_hub/features/checkout/presentation/views/payment/widgets/payment_section.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shared/checkout_steps_list.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shared/checkout_steps_page_view.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shipping/shipping_section.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHPadding),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const CheckoutStepsList(),
          Expanded(
            child: CheckoutStepsPageView(pageController: pageController),
          ),
          CustomButton(
            text: S.of(context).next,
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

List<Widget> checkoutStepsPages() {
  return [
    const ShippingSection(),
    const AddressInputSection(),
    const PaymentSection(),
    const SizedBox(),
  ];
}
