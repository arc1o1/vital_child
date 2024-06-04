import 'package:flutter/material.dart';
import 'package:vital_child/utils/constants/colors.dart';

class VcSettingsMenuTile extends StatelessWidget {
  const VcSettingsMenuTile({
    super.key,
    required this.icon,
    required this.title,
    // required this.subtitle,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final String title;
  // final String subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 20, color: VcColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      // subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
