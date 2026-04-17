import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/svg_ats.dart';
import 'package:fruit_hub/generated/l10n.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: const SizedBox(
            width: 20,
            child: Center(child: SvgAts(Assets.imagesSearchIcon)),
          ),
          suffixIcon: const SizedBox(
            width: 20,
            child: Center(child: SvgAts(Assets.imagesFilter)),
          ),
          hintStyle: AppTextStyles.regular13.copyWith(
            color: AppCols.silverMist,
          ),
          hintText: S.of(context).lookFor,
          filled: true,
          fillColor: AppCols.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: AppCols.white),
    );
  }
}
