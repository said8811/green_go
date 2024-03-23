import 'package:gap/gap.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

import '/theme/colors.dart';
import 'package:flutter/material.dart';

import '../components/loading_widget.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color? color;
  final Color? borderColor;
  final Color? splashColor;
  final Color? textColor;
  final Widget? leading;
  final bool isEnabled;
  final bool isLoading;
  final EdgeInsets? padding;
  final ShapeBorder? shape;
  final TextStyle? childStyle;
  final bool useDefaultPadding;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPress,
    this.color,
    this.borderColor,
    this.splashColor,
    this.textColor,
    this.leading,
    this.isEnabled = true,
    this.isLoading = false,
    this.padding,
    this.shape,
    this.childStyle,
    this.useDefaultPadding = true,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: padding != null || useDefaultPadding
          ? const EdgeInsets.symmetric(vertical: 12)
          : padding,
      elevation: 0,
      onPressed: isLoading
          ? () {}
          : isEnabled
              ? onPress
              : null,
      splashColor: splashColor,
      color: color ?? context.colorScheme.primary,
      shape: shape ??
          (borderColor != null
              ? StadiumBorder(side: BorderSide(color: borderColor!))
              : const StadiumBorder()),
      disabledColor: color != null
          ? color!.withOpacity(0.5)
          : context.colorScheme.primary.withOpacity(0.5),
      child: isLoading
          ? const SizedBox(
              width: 24,
              height: 24,
              child: LoadingWidget(color: AppColors.white),
            )
          : leading != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    leading!,
                    const Gap(6),
                    Text(
                      title,
                      style: childStyle ??
                          context.textTheme.bodyMedium?.copyWith(
                            color: textColor ?? Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                )
              : Text(
                  title,
                  style: childStyle ??
                      context.textTheme.bodyMedium?.copyWith(
                        color: textColor ?? Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color? color;
  final Color? borderColor;
  final Color? splashColor;
  final Color? textColor;
  final bool isEnabled;
  final bool isLoading;
  final EdgeInsets? padding;
  final bool useDefaultPadding;

  const SecondaryButton({
    super.key,
    required this.title,
    required this.onPress,
    this.color,
    this.borderColor,
    this.splashColor,
    this.textColor,
    this.isEnabled = true,
    this.isLoading = false,
    this.padding,
    this.useDefaultPadding = true,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: padding ??
          (useDefaultPadding
              ? const EdgeInsets.symmetric(vertical: 10)
              : padding),
      elevation: 0,
      onPressed: isLoading
          ? () {}
          : isEnabled
              ? onPress
              : null,
      splashColor: context.colorScheme.primary,
      color: color ?? context.colorScheme.background,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor ?? context.colorScheme.primary),
        borderRadius: BorderRadius.circular(10),
      ),
      disabledColor: color != null
          ? color!.withOpacity(0.5)
          : context.colorScheme.primary.withOpacity(0.5),
      child: isLoading
          ? const SizedBox(
              width: 24,
              height: 24,
              child: LoadingWidget(color: AppColors.white),
            )
          : Text(
              title,
              style: context.textTheme.bodyMedium?.copyWith(
                color:
                    textColor ?? borderColor ?? context.colorScheme.textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
    );
  }
}
