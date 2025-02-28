import 'package:flutter/material.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

import '../domain/location_model.dart';
import '../presentation/widgets/common_svg_picture.dart';

class UrlLaunchService {
  UrlLaunchService._();

  static Future<void> launchPhone(String number) async {
    try {
      final uri = Uri(scheme: 'tel', path: number);
      if (await launcher.canLaunchUrl(uri)) {
        await launcher.launchUrl(uri);
      } else {
        debugPrint("cannot launch phone: $number");
      }
    } catch (e) {
      debugPrint("$e");
    }
  }

  static Future<void> launchUrl(String url) async {
    try {
      if (await launcher.canLaunchUrl(Uri.parse(url))) {
        await launcher.launchUrl(
          Uri.parse(url),
          mode: launcher.LaunchMode.externalApplication,
        );
      } else {
        debugPrint('cannot launch $url');
      }
    } catch (_) {}
  }

  static void launchNavigator(
    BuildContext context, {
    required LocationModel coords,
  }) {
    MapLauncher.installedMaps.then((maps) {
      showModalBottomSheet(
        useRootNavigator: true,
        context: context,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        backgroundColor: context.colorScheme.surface,
        builder: (BuildContext context) {
          return SafeArea(
            minimum: const EdgeInsets.symmetric(vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Построить маршрут:',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Divider(height: 32, indent: 20, endIndent: 20),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: maps.length,
                    separatorBuilder: (_, __) => const Divider(),
                    itemBuilder: (context, index) {
                      final map = maps[index];
                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                        onTap: () async {
                          map.showDirections(destination: Coords(coords.latitude, coords.longitude));
                          Navigator.pop(context);
                        },
                        title: Text(
                          map.mapName,
                          style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        leading: CommonSvgPicture(map.icon, size: 30),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
