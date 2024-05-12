import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app_manager/local_data.dart';
import '../../../common_widget/enums.dart';
import 'brand_title_text.dart';

class BrandTitleVerifiedIcon extends StatelessWidget {
  const BrandTitleVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
    this.iconColor = primaryColor,
    this.textColor,
  });
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;
  final Color? iconColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
        )
      ],
    );
  }
}
