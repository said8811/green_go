import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({
    super.key,
    required this.timeRemaining,
    required this.whenTimeExpires,
    this.countDownFormatter,
    this.countDownTimerStyle,
  });

  final Duration timeRemaining;
  final VoidCallback whenTimeExpires;
  final TextStyle? countDownTimerStyle;
  final Function(int seconds)? countDownFormatter;

  @override
  State createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  late Duration duration;

  String get timerDisplayString {
    final controllerDuration = _controller!.duration! * _controller!.value;
    if (widget.countDownFormatter != null) {
      return widget.countDownFormatter!(duration.inSeconds) as String;
    } else {
      return formatHHMMSS(controllerDuration.inSeconds);
    }
  }

  String formatHHMMSS(int seconds) {
    final hours = (seconds / 3600).truncate();
    // seconds = (seconds % 3600).truncate();
    final minutes = (seconds / 60).truncate();

    final hoursStr = (hours).toString().padLeft(2, '0');
    final minutesStr = (minutes % 60).toString().padLeft(2, '0');

    final secondsStr = (seconds % 60).toString().padLeft(2, '0');

    if (hours == 0) {
      return '$minutesStr:$secondsStr';
    }

    return '$hoursStr:$minutesStr:$secondsStr';
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      duration = widget.timeRemaining;

      _controller = AnimationController(
        vsync: this,
        duration: duration,
      );

      _controller!
        ..reverse(from: widget.timeRemaining.inSeconds.toDouble())
        ..addStatusListener((status) {
          if (status == AnimationStatus.completed ||
              status == AnimationStatus.dismissed) {
            widget.whenTimeExpires();
          }
        });

      setState(() {});
    });
  }

  @override
  void didUpdateWidget(CountDownTimer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.timeRemaining.inSeconds != oldWidget.timeRemaining.inSeconds) {
      setState(() {
        duration = widget.timeRemaining;
        _controller?.dispose();
        _controller = AnimationController(
          vsync: this,
          duration: duration,
        );
        _controller!
          ..reverse(from: widget.timeRemaining.inSeconds.toDouble())
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              widget.whenTimeExpires();
            }
          });
      });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller != null
        ? AnimatedBuilder(
            animation: _controller!,
            builder: (_, Widget? child) {
              return Text(
                timerDisplayString,
                style: context.textTheme.displayMedium
                    ?.copyWith(fontWeight: FontWeight.w600),
              );
            },
          )
        : const Text('');
  }
}

class CountdownTimer extends StatelessWidget {
  final String timeRemaining;
  const CountdownTimer({super.key, required this.timeRemaining});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Таймер',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.red,
          ),
          child: Text(
            timeRemaining,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
