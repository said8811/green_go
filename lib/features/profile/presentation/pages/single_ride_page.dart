import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/presentation/widgets/common_expandable_panel.dart';
import 'package:green_go/features/core/shared/constants.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/map/domain/ride_model.dart';
import 'package:green_go/features/profile/shared/providers.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../gen/assets.gen.dart';
import '../../../core/presentation/widgets/common_svg_picture.dart';

class SingleRideView extends ConsumerStatefulWidget {
  final RideModel ride;
  const SingleRideView({
    super.key,
    required this.ride,
  });

  @override
  ConsumerState<SingleRideView> createState() => _SingleRideViewState();
}

class _SingleRideViewState extends ConsumerState<SingleRideView> {
  @override
  void initState() {
    if (widget.ride.coordinates.isNotEmpty) {
      ref.read(mapImageProvider.notifier).getImage(widget.ride.coordinates);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final image = ref.watch(mapImageProvider);
    return Scaffold(
      appBar: CommonAppBar(
        title: widget.ride.tariff?.nameRu,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.ride.coordinates.isNotEmpty)
                image.when(
                  data: (data) => Container(
                    constraints: const BoxConstraints(maxHeight: 200),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: MemoryImage(data),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  error: (error, s) => Center(
                    child: Text(error.toString()),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              const Gap(10),
              const Divider(),
              const Gap(20),
              Text(
                context.l10n.extraInfoDialog,
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: context.colorScheme.grey),
              ),
              const Gap(20),
              Row(
                children: [
                  Text(context.l10n.tariff),
                  const Spacer(),
                  Text(widget.ride.tariff?.getTitle(context.l10n.localeName) ??
                      ""),
                  const Gap(5),
                  CommonSvgPicture(Assets.icons.checkGreen)
                ],
              ),
              const Divider(),
              tileWithsub(
                  context.l10n.travelTime,
                  DateFormat("d-MM-yyyy - HH:mm", "tr_TR")
                      .format(DateTime.parse(widget.ride.startAt)),
                  context),
              const Divider(),
              tileWithsub(
                  context.l10n.travelDuration,
                  "${DateTime.parse(widget.ride.finishedAt).difference(DateTime.parse(widget.ride.startAt)).inHours} soat ${DateTime.parse(widget.ride.finishedAt).difference(DateTime.parse(widget.ride.startAt)).inMinutes % 60} daqiqa",
                  context),
              const Divider(),
              tileWithsub(
                  context.l10n.pouseDuration,
                  "${widget.ride.pouseTime ~/ 60} soat ${widget.ride.pouseTime % 60} daqiqa",
                  context),
              const Divider(),
              const Gap(10),
              Row(
                children: [
                  Text(context.l10n.perMinute),
                  const Spacer(),
                  Text(context.l10n.productPrice(
                      kPriceFormatter.format(widget.ride.pricePerMinute)))
                ],
              ),
              const Gap(12),
              Row(
                children: [
                  Text(context.l10n.startPrice),
                  const Spacer(),
                  Text(context.l10n.productPrice(
                      kPriceFormatter.format(widget.ride.startPrice)))
                ],
              ),
              const Gap(12),
              Row(
                children: [
                  Text(context.l10n.pousePricePerMinute),
                  const Spacer(),
                  Text(context.l10n.productPrice(
                      kPriceFormatter.format(widget.ride.pausePricePerMinute)))
                ],
              ),
              const Gap(12),
              Row(
                children: [
                  Text(context.l10n.totalPrice),
                  const Spacer(),
                  Text(
                    context.l10n.productPrice(
                        kPriceFormatter.format(widget.ride.total)),
                    style: context.textTheme.bodyMedium
                        ?.copyWith(color: context.colorScheme.primary),
                  )
                ],
              ),
              const Gap(20),
              if (widget.ride.image.isNotEmpty)
                CommonExpandablePanel(
                    symPadding: 0,
                    title: context.l10n.endImage,
                    child: CachedNetworkImage(
                        imageUrl: "$kCDNUrl/rides/${widget.ride.image}"))
            ],
          ),
        ),
      ),
    );
  }

  Widget tileWithsub(String title, String subTitle, BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: context.textTheme.bodyMedium,
      ),
      subtitle: Text(
        subTitle,
        style: context.textTheme.labelSmall
            ?.copyWith(fontSize: 14, color: context.colorScheme.greyDark),
      ),
    );
  }
}
