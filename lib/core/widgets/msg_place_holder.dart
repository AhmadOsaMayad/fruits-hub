import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class MsgPlaceHolder extends StatelessWidget {
  const MsgPlaceHolder({super.key, required this.msg});
  final String msg;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.5,
      width: double.infinity,
      child: Center(
        child: Text(
          msg,
          style: AppTextStyles.bold13.copyWith(color: Colors.grey),
        ),
      ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Image.asset('assets/images/empty_cart.png'),
      //     const SizedBox(height: 16),
      //     Text(
      //       S.of(context).yourCartIsEmpty,
      //       style: AppTextStyles.regular13.copyWith(color: const Color(0xFF131E1F)),
      //     ),
      //   ],
      // ),
    );
  }
}
