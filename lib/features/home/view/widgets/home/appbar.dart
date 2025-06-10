import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final List<Widget>? actions;
  final Color backgroundColor;
  final Color iconColor;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    this.actions,
    this.backgroundColor = Pallete.grayScaleColor0,
    this.iconColor = Pallete.black1,
    this.titleStyle,
    this.subtitleStyle,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: titleStyle),
            SizedBox(height: 2),
            Text(subtitle, style: subtitleStyle),
          ],
        ),

        actions: actions,
      ),
    );
  }
}
