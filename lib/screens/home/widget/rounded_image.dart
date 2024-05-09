import 'package:flutter/material.dart';

import '../../../app_manager/local_data.dart';

class RoundedImage extends StatelessWidget {
  RoundedImage({
    super.key,
    this.borderRadius = 16,
    this.width = 400,
    this.height = 200,
    this.padding,
    this.border,
    required this.imageUrl,
    this.isNetworkImage = false,
    this.applyImageRadius = true,
    this.fit = BoxFit.fill,
    this.backgroundColor = lightColor,
    this.onPressed,
  });

  final double borderRadius, width, height;
  final EdgeInsets? padding;
  final BoxBorder? border;
  bool applyImageRadius;
  final String imageUrl;
  final bool isNetworkImage;
  final BoxFit? fit;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            color: backgroundColor,
            border: border,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius:
              applyImageRadius ? BorderRadius.circular(16) : BorderRadius.zero,
          child: Image(
            width: 200,
            height: 200,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
