import 'package:flutter/material.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';

import '../../domain/errors.dart';
import '../../domain/failure.dart';
import '../buttons/primary_button.dart';

class ErrorWithRetry extends StatelessWidget {
  final Failure? failure;
  final void Function() retry;
  final String? btnText;
  const ErrorWithRetry({
    super.key,
    required this.failure,
    required this.retry,
    this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              failure != null
                  ? failure!.maybeWhen(
                      () => ErrorStrings.generalError,
                      server: (str) => str ?? ErrorStrings.generalError,
                      local: (message) => message ?? ErrorStrings.generalError,
                      noConnection: () => ErrorStrings.noConnectionError,
                      orElse: () => ErrorStrings.generalError,
                    )
                  : ErrorStrings.generalError,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              title: btnText ?? context.l10n.refresh,
              onPress: retry,
            ),
          ],
        ),
      ),
    );
  }
}

class ErrorWithoutRetry extends StatelessWidget {
  final Failure? failure;
  const ErrorWithoutRetry({
    super.key,
    required this.failure,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Text(
          failure != null
              ? failure!.maybeMap(
                  (value) => value.toString(),
                  server: (f) => '${f.message}',
                  noConnection: (_) => ErrorStrings.noConnectionError,
                  orElse: () => ErrorStrings.generalError,
                )
              : ErrorStrings.generalError,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
