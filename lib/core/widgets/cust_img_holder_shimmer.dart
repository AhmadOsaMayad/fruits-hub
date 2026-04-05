import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/shimmer_wrapper.dart';

class CustImgHolderShimmer extends StatelessWidget {
  const CustImgHolderShimmer({super.key, this.aspect, this.radius});
  final double? aspect, radius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 8)),
      child: ShimmerWrapper(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
