import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

class CommonBottomBtn extends StatelessWidget {
  final Widget child;
  const CommonBottomBtn({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
            Border(top: BorderSide(color: context.colorScheme.dividerColor)),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: child,
      ),
    );
  }
}
