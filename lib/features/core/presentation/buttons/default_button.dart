import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/theme/colors.dart';

import '../components/loading_widget.dart';

enum ButtonType { primary, bordered }

class AppTextButton extends StatelessWidget {
  final String title;
  final Function()? onPress;
  final bool isLarge;
  final Color textColor;
  final bool enabled;

  const AppTextButton({
    super.key,
    required this.title,
    this.onPress,
    this.textColor = AppColors.primary,
    this.isLarge = false,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: enabled ? (onPress ?? () {}) : null,
      child: Text(
        title,
        style: isLarge
            ? Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                )
            : Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
      ),
    );
  }
}

class DefaultMaterialBtn extends StatelessWidget {
  final String title;
  final double borderRadius;
  final Color color;
  final GestureTapCallback callback;
  final double elevation;
  final bool hapticFeedback;
  final String subTitle;
  final bool loading;
  final double horizontalPadding;

  const DefaultMaterialBtn({
    super.key,
    required this.title,
    this.borderRadius = 10,
    this.color = AppColors.primary,
    required this.callback,
    this.elevation = 1,
    this.hapticFeedback = false,
    this.subTitle = '',
    this.loading = false,
    this.horizontalPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: elevation,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: horizontalPadding),
      onPressed: () {
        if (hapticFeedback) HapticFeedback.mediumImpact();
        callback();
      },
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      child: loading
          ? const SizedBox(
              width: 24,
              height: 24,
              child: LoadingWidget(color: AppColors.white),
            )
          : subTitle.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        subTitle,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                )
              : Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
    );
  }
}

class DefaultIconButton extends StatelessWidget {
  final Function() onPress;
  final Widget child;
  final Color color;
  const DefaultIconButton({
    super.key,
    required this.onPress,
    required this.child,
    this.color = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
