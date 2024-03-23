import 'package:green_go/features/core/presentation/components/loading_widget.dart';

import '../../application/helper_functions.dart';
import '../../shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';
import '../../domain/failure.dart';
import '../components/error_with_retry.dart';

class AsyncValueWidget<T> extends HookWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    required this.callback,
    this.useInit = true,
    this.useSlivers = false,
  });

  final AsyncValue<T> value;
  final Widget Function(T) data;
  final VoidCallback callback;
  final bool useInit;
  final bool useSlivers;

  @override
  Widget build(BuildContext context) {
    if (useInit) useEffectWithScheduler(action: callback);
    return useSlivers
        ? SliverAnimatedSwitcher(
            duration: kAnimationDuration,
            child: _child,
          )
        : AnimatedSwitcher(
            duration: kAnimationDuration,
            child: _child,
          );
  }

  Widget get _child => value.when(
        skipLoadingOnRefresh: false,
        skipLoadingOnReload: false,
        data: data,
        loading: () => useSlivers
            ? const SliverToBoxAdapter(child: LoadingWidget())
            : const LoadingWidget(),
        error: (e, _) => useSlivers
            ? SliverToBoxAdapter(
                child: ErrorWithRetry(failure: e as Failure?, retry: callback))
            : ErrorWithRetry(failure: e as Failure?, retry: callback),
      );
}
