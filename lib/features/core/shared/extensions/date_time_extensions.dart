import 'package:flutter/material.dart';

extension DateTimeX on DateTime {
  DateTime get lastSunday {
    return subtract(Duration(days: weekday));
  }

  Duration get remainingTime {
    return difference(DateTime.now());
  }
}

extension TimeOfDayConverter on TimeOfDay {
  String get to24HourFormat {
    final hours = hour.toString().padLeft(2, "0");
    final min = minute.toString().padLeft(2, "0");
    return "$hours:$min";
  }
}

List<TimeOfDay> makeTimeLine() {
  final List<TimeOfDay> times = [];
  for (int i = 0; i < 24; i++) {
    times.add(TimeOfDay(hour: i, minute: 00));
  }
  return times;
}

final tomorrow = DateTime.now().add(
  const Duration(days: 1),
);

bool isValidTimeRange(TimeOfDay startTime, TimeOfDay endTime) {
  final TimeOfDay now = TimeOfDay.now();
  return ((now.hour > startTime.hour) || (now.hour == startTime.hour && now.minute >= startTime.minute)) &&
      ((now.hour < endTime.hour) || (now.hour == endTime.hour && now.minute <= endTime.minute));
}
