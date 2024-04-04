import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../shared/extensions/date_time_extensions.dart';

class JsonHelpers {
  JsonHelpers._();

  static double intToDouble(Object? json) {
    if (json != null) {
      return double.parse(json.toString());
    } else {
      return 0.0;
    }
  }

  static List<String> queueToString(List? json) {
    if (json != null) {
      return json
          .map((e) => e.toString().replaceAll("(", "").replaceAll(")", ""))
          .toList();
    }
    return [];
  }

  static int stringToIntAmount(Object? json) {
    if (json != null) {
      return double.parse(json.toString()).toInt();
    } else {
      return 0;
    }
  }

  static String timeOfDayToString(TimeOfDay json) {
    return json.to24HourFormat;
  }

  static DateTime? stringToDateTime(Object? json) {
    if (json != null) {
      return DateTime.parse(json.toString());
    } else {
      return null;
    }
  }

  static DateTime stringToDateTimeNow(Object? json) {
    if (json != null) {
      return DateTime.parse(json.toString());
    } else {
      return DateTime.now();
    }
  }

  static double? stringToNullDouble(Object? json) {
    if (json != null && json.toString().isNotEmpty) {
      try {
        return double.parse(json.toString());
      } on FormatException catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }

  static double stringToDouble(Object? json) {
    if (json != null && json.toString().isNotEmpty) {
      try {
        return double.parse(json.toString());
      } on FormatException catch (_) {
        return 0.0;
      }
    } else {
      return 0.0;
    }
  }

  static bool stringToBool(Object? json) {
    if (json != null) {
      if (json.toString() == '1') {
        return true;
      }
    }
    return false;
  }

  static bool intToBool(Object? json) {
    if (json != null) {
      if ((json as int) == 1) {
        return true;
      }
    }
    return false;
  }

  static int stringToIntPosition(Object? json) {
    if (json != null) {
      return int.parse(json.toString());
    } else {
      return 1000;
    }
  }

  static int? stringToIntNullPosition(Object? json) {
    if (json != null) {
      return int.parse(json.toString());
    } else {
      return null;
    }
  }

  static int stringToInt(Object? json) {
    if (json != null) {
      return double.parse(json.toString()).toInt();
    } else {
      return 0;
    }
  }

  static TimeOfDay stringToTimeOfDay(Object? json) {
    if (json != null) {
      return TimeOfDay(
        hour: int.parse(json.toString().split(":")[0]),
        minute: int.parse(json.toString().split(":")[1]),
      );
    } else {
      return const TimeOfDay(hour: 00, minute: 00);
    }
  }

  static String intToString(Object? json) {
    if (json != null) {
      return json.toString();
    } else {
      return '';
    }
  }

  static String? intToNullString(Object? json) {
    if (json != null) {
      return json.toString();
    } else {
      return null;
    }
  }

  static String intToSex(Object? json) {
    if (json != null && json == 0) {
      return 'woman';
    } else {
      return 'man';
    }
  }

  static int sexToInt(String? gender) {
    if (gender == 'Женщина') {
      return 0;
    } else {
      return 1;
    }
  }

  static List<String> dynamicToListString(Object? json) {
    if (json == null) {
      return [];
    } else {
      final List<String> list = [];
      for (final i in json as List<dynamic>) {
        if (i.runtimeType == String && i.toString().isNotEmpty) {
          list.add(i as String);
        } else {
          continue;
        }
      }
      return list;
    }
  }
}

class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();
  @override
  TimeOfDay fromJson(Object? json) {
    if (json != null) {
      return TimeOfDay(
        hour: int.parse(json.toString().split(":")[0]),
        minute: int.parse(json.toString().split(":")[1]),
      );
    } else {
      return const TimeOfDay(hour: 00, minute: 00);
    }
  }

  @override
  String toJson(TimeOfDay object) {
    throw UnimplementedError();
  }
}
