import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useEffectWithScheduler({
  required VoidCallback action,
  Object? identifier,
}) {
  useEffect(
    () {
      WidgetsBinding.instance.addPostFrameCallback((_) => action());
      return;
    },
    [identifier],
  );
}

void useInterval(VoidCallback callback, Duration delay) {
  final savedCallback = useRef(callback);
  savedCallback.value = callback;

  useEffect(
    () {
      final timer = Timer.periodic(delay, (_) => savedCallback.value());
      return timer.cancel;
    },
    [delay],
  );
}
