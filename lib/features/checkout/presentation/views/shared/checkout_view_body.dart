import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:fruit_hub/app_vault.dart';
import 'package:fruit_hub/core/helpers/build_snack_bar.dart';
import 'package:fruit_hub/core/utils/app_defs.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/checkout/domain/entities/paypal_payment_entity/paypal_payment_entity.dart';
import 'package:fruit_hub/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shared/checkout_steps_list.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shared/checkout_steps_page_view.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:provider/provider.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});
  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  int currentPageIndex = 0;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  ValueNotifier<AutovalidateMode> autoValidateMode = ValueNotifier(
    AutovalidateMode.disabled,
  );

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    autoValidateMode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHPadding),
      child: Column(
        children: [
          const SizedBox(height: 20),
          CheckoutStepsList(
            currentPageIndex: currentPageIndex,
            pageController: pageController,
          ),
          Expanded(
            child: CheckoutStepsPageView(
              valueListenable: autoValidateMode,
              pageController: pageController,
              formKey: formKey,
            ),
          ),
          CustomButton(
            text: getNextButtonTitle(context)[currentPageIndex],
            onPressed: () {
              if (currentPageIndex == 0) {
                _handleShippingSection(context);
              } else if (currentPageIndex == 1) {
                _handleAddressInputSection();
              } else if (currentPageIndex == 2) {
                _processPayment();
              } else if (currentPageIndex == 3) {}
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  void _handleShippingSection(BuildContext context) {
    if (context.read<OrderEntity>().payWithCash != null) {
      pageController.nextPage(duration: kDefDuration, curve: Curves.easeIn);
    } else {
      showSnackBar(context, S.of(context).selectPaymentMethod);
    }
  }

  void _handleAddressInputSection() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      pageController.nextPage(duration: kDefDuration, curve: Curves.easeIn);
    } else {
      autoValidateMode.value = AutovalidateMode.always;
    }
  }

  void _processPayment() {
    var orderEntity = context.read<OrderEntity>();
    var paypalPaymentEntity = PaypalPaymentEntity.fromEntity(orderEntity);
    var addOrderCubit = context.read<AddOrderCubit>();
    var sText = S.of(context);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (BuildContext context) => PaypalCheckoutView(
              sandboxMode: true,
              clientId: kPaypalClientID,
              secretKey: kPaypalClientSecret,
              transactions: [paypalPaymentEntity.toJson()],
              note: sText.contactUsForQuestions,
              onSuccess: (Map params) async {
                log('$kOnSuccess: $params');
                showSnackBar(context, sText.orderAddedSuccessfully);
                Navigator.pop(context);
                await addOrderCubit.addOrder(orderEntity);
              },
              onError: (error) {
                log('$kOnError: ${error.toString()}');
                showSnackBar(context, error.toString());
                Navigator.pop(context);
              },
              onCancel: () {
                // print('cancelled:');
              },
            ),
      ),
    );
  }
}

List<String> getNextButtonTitle(BuildContext context) {
  var sText = S.of(context);
  return [
    sText.next,
    sText.next,
    '${sText.payWith} ${sText.payPal} ',
    sText.next,
  ];
}
