import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/domain/ride_model.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/router/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import '../../../core/presentation/widgets/common_svg_picture.dart';

class HistoryWidget extends HookConsumerWidget {
  final RideModel ride;
  const HistoryWidget({super.key, required this.ride});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          context.pushNamed(AppRoute.singleRideHistory.routePathNoSlash,
              extra: ride);
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    offset: const Offset(4, 2),
                    color: context.colorScheme.grey)
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CommonSvgPicture(Assets.icons.bike),
                  const Gap(10),
                  Text(ride.tariff?.nameRu ?? ""),
                  const Spacer(),
                  Text(getDate(DateTime.parse(ride.startAt).toLocal())),
                ],
              ),
              const Gap(30),
              if (ride.finishedAt.isNotEmpty)
                Text(
                    'Davomiyligi: ${DateTime.parse(ride.finishedAt).difference((DateTime.parse(ride.startAt))).inHours} soat ${(DateTime.parse(ride.finishedAt).difference((DateTime.parse(ride.startAt))).inMinutes > 60) ? DateTime.parse(ride.finishedAt).difference((DateTime.parse(ride.startAt))).inMinutes % 60 : DateTime.parse(ride.finishedAt).difference((DateTime.parse(ride.startAt))).inMinutes} daqiqa'),
              const Gap(20),
              Text(
                "Jami summa: ${context.l10n.productPrice(kPriceFormatter.format(ride.total))}",
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: context.colorScheme.primary),
              )
            ],
          ),
        ),
      ),
    );
  }

  String getDate(DateTime date) {
    return "${date.hour < 10 ? "0${date.hour}" : date.hour}:${date.minute < 10 ? "0${date.minute}" : date.minute}";
  }
}
