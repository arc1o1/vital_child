import 'package:vital_child/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:vital_child/utils/constants/sizes.dart';

class VcLoginHeader extends StatelessWidget {
  const VcLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
            width: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'VitalChild',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: VcColors.primary,
                      fontSize: 40,
                    ),
              ),
            ],
          ),
          const SizedBox(height: VcSizes.spaceBtnSections * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back!',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: VcColors.primary,
                      fontSize: 40,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
