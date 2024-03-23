import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'device_details.freezed.dart';

@freezed
class DeviceDetails with _$DeviceDetails {
  const DeviceDetails._();

  const factory DeviceDetails({
    String? appVersion,
    String? system,
    String? systemVersion,
    String? deviceId,
    String? deviceName,
    String? systemName,
    int? buildNumber,
  }) = _DeviceDetails;
}

class DeviceInfoDetails {
  Future<DeviceDetails?> getDeviceDetails() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        final id = await const AndroidId().getId();
        final build = await deviceInfoPlugin.androidInfo;
        return DeviceDetails(
          appVersion: packageInfo.version,
          system: 'Android',
          systemVersion: build.version.release,
          systemName: build.version.codename,
          deviceId: id,
          deviceName: build.model,
          buildNumber: int.parse(packageInfo.buildNumber),
        );
      } else {
        final data = await deviceInfoPlugin.iosInfo;
        return DeviceDetails(
          appVersion: packageInfo.version,
          system: 'iOS',
          systemVersion: data.systemVersion,
          systemName: data.utsname.sysname,
          deviceId: data.identifierForVendor,
          deviceName: data.name,
          buildNumber: int.parse(packageInfo.buildNumber),
        );
      }
    } on PlatformException catch (_) {
      return null;
    }
  }
}
