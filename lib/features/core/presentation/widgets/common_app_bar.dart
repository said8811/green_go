import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

// ignore: avoid_implementing_value_types
class CommonAppbar extends StatelessWidget implements PreferredSize {
  final String title;
  const CommonAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text(
          title,
          style: context.textTheme.displayLarge?.copyWith(fontSize: 26),
        ),
      ),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(
          1.0,
        ),
        child: Divider(
          height: 1.0,
          color: Colors.grey,
          thickness: 1.0,
        ),
      ),
    );
  }

  @override
  Widget get child => Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text(
          title,
          // style: context.textTheme.displayLarge?.copyWith(fontSize: 26),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
