import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/cust_img_holder_shimmer.dart';
import 'package:fruit_hub/core/widgets/place_holder_image.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.fill,
      imageUrl: imageUrl,
      placeholder:
          (context, url) =>
              url.isEmpty
                  ? const PlaceHolderImage()
                  : const CustImgHolderShimmer(), //ErrorImage(),
      errorWidget: (context, url, error) => const PlaceHolderImage(),
    );
    // Image.network(imageUrl);
  }
}
