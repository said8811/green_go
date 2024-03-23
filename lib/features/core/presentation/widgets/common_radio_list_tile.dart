import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

import 'selected_circle_widget.dart';

class CommonRadioListTile extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function() onPress;

  const CommonRadioListTile({
    super.key,
    required this.isSelected,
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SelectedCircleWidget(isSelected: isSelected),
            const Gap(10),
            Text(text, style: context.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
