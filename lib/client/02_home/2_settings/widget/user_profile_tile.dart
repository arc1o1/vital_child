import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vital_child/client/02_home/2_settings/widget/circular_image.dart';
import 'package:vital_child/utils/constants/colors.dart';
import 'package:vital_child/utils/constants/image_strings.dart';

class VcUserProfileTile extends StatelessWidget {
  const VcUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const VcCircularImage(
        image: VcImages.baby,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Alpha Vintan',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: VcColors.primary)),
      subtitle: Text('alpha1691@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: VcColors.primary)),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit4, color: VcColors.primary),
      ),
    );
  }
}
