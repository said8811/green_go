import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../shared/extensions/theme_extensions.dart';
import '../buttons/primary_button.dart';

class CommonConfirmActionsView extends StatelessWidget {
  const CommonConfirmActionsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              title: 'Да',
              splashColor: context.colorScheme.error.withOpacity(0.5),
              textColor: context.colorScheme.error,
              color: Colors.transparent,
              borderColor: context.colorScheme.error,
              onPress: () {
                Navigator.pop(context, true);
              },
            ),
          ),
          const Gap(15),
          Expanded(
            child: PrimaryButton(
              title: 'Нет',
              splashColor: context.colorScheme.secondary.withOpacity(0.5),
              textColor: context.colorScheme.secondary,
              borderColor: context.colorScheme.secondary,
              color: Colors.transparent,
              onPress: () {
                Navigator.pop(context, false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
