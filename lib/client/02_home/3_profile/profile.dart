import 'package:flutter/material.dart';
import 'package:vital_child/client/02_home/2_settings/widget/circular_image.dart';
import 'package:vital_child/client/02_home/3_profile/widgets/profile_menu.dart';
import 'package:vital_child/client/02_home/3_profile/widgets/section_heading.dart';
import 'package:vital_child/utils/constants/colors.dart';
import 'package:vital_child/utils/constants/image_strings.dart';
import 'package:vital_child/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: VcColors.primary,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const VcCircularImage(
                        image: VcImages.baby,
                        width: 150,
                        height: 150,
                        padding: 10),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture"))
                  ],
                ),
              ),

              // divider
              const SizedBox(height: VcSizes.spaceBtnItems_2 / 2),
              const Divider(),
              const SizedBox(height: VcSizes.spaceBtnItems_2),

              // section heading
              const VcSectionHeading(
                  title: "Profile Information", showActionButton: false),

              const SizedBox(height: VcSizes.spaceBtnItems_2),

              // user details
              VcProfileMenu(
                  onPressed: () {}, title: "Name:", value: "Alpha Vintan"),
              VcProfileMenu(
                  onPressed: () {}, title: "Username:", value: "Alpha Vintan"),

              const SizedBox(height: VcSizes.spaceBtnItems_2),
              const Divider(),
              const SizedBox(height: VcSizes.spaceBtnItems_2),

              // section heading
              const VcSectionHeading(
                  title: "Personal Information", showActionButton: false),

              const SizedBox(height: VcSizes.spaceBtnItems_2),

              // personal information
              VcProfileMenu(
                  onPressed: () {},
                  title: "User ID:",
                  value: "14146",
                  icon: Icons.copy),
              VcProfileMenu(
                  onPressed: () {},
                  title: "E-mail:",
                  value: "alpha1691@gmail.com.com"),
              VcProfileMenu(
                  onPressed: () {},
                  title: "Phone Number:",
                  value: "0698000000"),
            ],
          ),
        ),
      ),
    );
  }
}
