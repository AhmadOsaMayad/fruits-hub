import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helpers/is_arabic.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/svg_ats.dart';
import 'package:fruit_hub/features/main/presentation/views/home/widgets/featured_item_button.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width - 32;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                left: isArabic() ? 0 : itemWidth * .4,
                top: 0,
                bottom: 0,
                right: isArabic() ? itemWidth * .4 : 0,
                child: const SvgAts(
                  Assets.imagesPageViewItem2Image,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: itemWidth * .5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(
                      isArabic()
                          ? Assets.imagesFeaturedItemBackground
                          : Assets.imagesFeaturedFlippedItemBg,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: isArabic() ? 33 : 0,
                    left: isArabic() ? 0 : 33,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        S.of(context).eidOffers,
                        style: AppTextStyles.regular13.copyWith(
                          color: AppCols.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        S.of(context).discount25,
                        style: AppTextStyles.bold19.copyWith(
                          color: AppCols.white,
                        ),
                      ),
                      const SizedBox(height: 11),
                      FeaturedItemButton(onPressed: () {}),
                      const SizedBox(height: 29),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
