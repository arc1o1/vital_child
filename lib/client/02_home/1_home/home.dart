import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vital_child/client/02_home/2_settings/settings.dart';
import 'package:vital_child/utils/constants/colors.dart';
import 'package:vital_child/utils/constants/image_strings.dart';
import 'package:vital_child/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: VcColors.primary,
              ),
        ),
        actions: [
          // icon
          InkWell(
            onTap: () => Get.to(() => const SettingsScreen()),
            child: const Icon(
              Icons.person_rounded,
              color: VcColors.primary,
            ),
          ),

          // space
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // pic heading
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: VcColors.primary),
                    borderRadius: BorderRadius.circular(1000),
                    color: Colors.transparent,
                  ),
                  child: const ClipRRect(
                    child: Image(image: AssetImage(VcImages.baby)),
                  ),
                ),
              ),

              const SizedBox(height: VcSizes.spaceBtnItems_2),

              // Baby's name
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Alpha Vintan",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: VcColors.primary,
                          fontSize: 22,
                        ),
                  )
                ],
              ),

              const SizedBox(height: VcSizes.spaceBtnItems_2),

              Divider(color: Colors.grey.shade300),

              const SizedBox(height: VcSizes.spaceBtnItems_2 * 3),

              // status
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Everything is Okay!",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: VcColors.primary,
                          fontSize: 22,
                        ),
                  ),
                ],
              ),

              const SizedBox(height: VcSizes.spaceBtnItems_2 * 4),

              // detail

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //
                  // oxygen level
                  StatusContainer(
                    image: VcImages.oxygen,
                    title: "Oxygen Level",
                    value: "99",
                  ),

                  // temperature level
                  StatusContainer(
                    image: VcImages.temperature,
                    title: "Temperature",
                    value: "36.4",
                  ),

                  // heart rate level
                  StatusContainer(
                    image: VcImages.heart,
                    title: "Heart Rate",
                    value: "196",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    super.key,
    required this.image,
    required this.title,
    required this.value,
  });

  final String image, title, value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 100,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.purple.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          // image
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image(
                image: AssetImage(image),
                height: 50,
              ),
            ),
          ),

          const SizedBox(height: 5),

          // text
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: 14),
          ),

          const SizedBox(height: 5),

          // text
          Text(
            value,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: 17, color: VcColors.primary),
          )
        ],
      ),
    );
  }
}
