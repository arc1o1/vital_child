import 'package:flutter/material.dart';
import 'package:vital_child/utils/constants/colors.dart';
import 'package:vital_child/utils/constants/sizes.dart';

class VcCircularImage extends StatelessWidget {
  const VcCircularImage({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor = Colors.white,
    this.width = 50,
    this.height = 50,
    this.padding = VcSizes.xs,
    this.pad = 4,
  });

  final String image;
  final bool isNetworkImage;
  final Color? overlayColor, backgroundColor;
  final double width, height, padding, pad;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(500),
          border: Border.all(color: VcColors.primary)),

      // image
      child: Padding(
        padding: EdgeInsets.all(pad),
        child: Center(
          child: ClipRRect(
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(image)
                  : AssetImage(image) as ImageProvider,
            ),
          ),
        ),
      ),
    );
  }
}
