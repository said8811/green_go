import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

import '../buttons/back_button.dart';
import '../widgets/common_svg_picture.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showDivider;
  final String? title;
  final String? leading;
  final bool? canPop;
  final VoidCallback? onLeading;
  final List<Widget> actions;
  final VoidCallback? onBack;

  const CommonAppBar({
    super.key,
    this.showDivider = true,
    this.title,
    this.leading,
    this.canPop = true,
    this.onLeading,
    this.actions = const [],
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: canPop ?? true
          ? leading != null
              ? IconButton(
                  onPressed: onLeading, icon: CommonSvgPicture(leading!))
              : CustomBackButton(onBackPress: onBack)
          : null,
      title: title != null
          ? Text(
              title!,
              style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
            )
          : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CommonSliverAppBar extends StatelessWidget {
  final bool showDivider;
  final Widget? customTitle;
  final String? title;
  final Widget? leading;
  final List<Widget> actions;
  final VoidCallback? onBack;
  final Future<void> Function()? onStretchTrigger;
  final bool isLoading;

  const CommonSliverAppBar({
    super.key,
    this.showDivider = true,
    this.title,
    this.leading,
    this.actions = const [],
    this.onBack,
    this.onStretchTrigger,
    this.isLoading = false,
    this.customTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      floating: true,
      pinned: true,
      leading: leading ?? CustomBackButton(onBackPress: onBack),
      title: customTitle ?? (title != null ? Text(title!) : null),
      actions: actions,
      onStretchTrigger: onStretchTrigger,
      stretch: onStretchTrigger != null,
      // bottom: _BottomView(isLoading),
    );
  }
}
