import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vital_child/client/02_home/2_settings/widget/settings_menu_tiles.dart';
import 'package:vital_child/client/02_home/2_settings/widget/user_profile_tile.dart';
import 'package:vital_child/client/02_home/3_profile/profile.dart';
import 'package:vital_child/utils/constants/colors.dart';
import 'package:vital_child/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: VcColors.primary,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header

            Column(
              children: [
                const SizedBox(height: VcSizes.spaceBtnItems_2 / 2),

                // user profile card
                VcUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
              ],
            ),

            // body
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Divider(),

                  //
                  const SizedBox(height: VcSizes.spaceBtnItems_2),

                  VcSettingsMenuTile(
                    icon: Icons.notes,
                    title: 'Appointments',
                    onTap: () {},
                  ),
                  VcSettingsMenuTile(
                    icon: Icons.history,
                    title: 'History',
                    // subtitle: 'In progress and completed orders',
                    onTap: () {},
                  ),
                  VcSettingsMenuTile(
                    icon: Icons.notifications_active_outlined,
                    title: 'Notifications',
                    // subtitle: 'Set any kind of Notification message',
                    onTap: () {},
                  ),

                  const SizedBox(height: VcSizes.spaceBtnItems_1),

                  VcSettingsMenuTile(
                    icon: Icons.smartphone,
                    title: 'Contacts',
                    // subtitle: 'Manage data usage and connected aVcounts',
                    onTap: () {},
                  ),
                  VcSettingsMenuTile(
                    icon: Icons.security_sharp,
                    title: 'Privacy',
                    // subtitle: 'Manage data usage and connected aVcounts',
                    onTap: () {},
                  ),
                  VcSettingsMenuTile(
                    icon: Icons.help_outline,
                    title: 'Help',
                    // subtitle: 'Manage data usage and connected aVcounts',
                    onTap: () {},
                  ),

                  const SizedBox(height: VcSizes.spaceBtnItems_1),

                  // // app settings
                  // const VcSectionHeading(
                  //     title: 'App Settings', showActionButton: false),

                  // const SizedBox(height: VcSizes.spaceBtnItems_1),

                  const Divider(),

                  const SizedBox(height: VcSizes.spaceBtnSections),

                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Logout",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
