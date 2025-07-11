import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green_go/features/auth/shared/providers.dart';
import 'package:green_go/features/core/presentation/components/common_appbar.dart';
import 'package:green_go/features/core/presentation/helpers/ui_utils.dart';
import 'package:green_go/features/core/presentation/widgets/common_svg_picture.dart';
import 'package:green_go/features/core/shared/constants.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'package:green_go/features/profile/presentation/widgets/help_tile_view.dart';
import 'package:green_go/features/profile/presentation/widgets/main_tiles_view.dart';
import 'package:green_go/features/profile/shared/providers.dart';
import 'package:green_go/gen/assets.gen.dart';
import 'package:green_go/services/localization/l10n/l10n.dart';
import 'package:green_go/services/router/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final state = ref.watch(profileNotifierProvider);
    ref.listen(imageUpdateProvider, (p, n) {
      if (n == true && p == false) {
        ref.read(profileNotifierProvider.notifier).getProfile();
      }
    });
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: context.l10n.profile,
      ),
      body: SafeArea(
        child: state.when(
            data: (data) => RefreshIndicator(
                  onRefresh: () async {
                    await ref.read(profileNotifierProvider.notifier).getProfile();
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Expanded(
                                            child: InkWell(
                                              onTap: _getFromCamera,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(
                                                    EvaIcons.cameraOutline,
                                                    size: 50,
                                                    color: context.colorScheme.primary,
                                                  ),
                                                  const Gap(10),
                                                  Text(
                                                    "Camera",
                                                    style: context.textTheme.bodyMedium,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: InkWell(
                                              onTap: _getFromGalery,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(
                                                    EvaIcons.imageOutline,
                                                    size: 50,
                                                    color: context.colorScheme.primary,
                                                  ),
                                                  const Gap(10),
                                                  Text(
                                                    "Galery",
                                                    style: context.textTheme.bodyMedium,
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ));
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.only(top: 70, bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: data.image.isEmpty
                                    ? DecorationImage(
                                        image: AssetImage(Assets.images.user.path),
                                        fit: BoxFit.cover,
                                      )
                                    : DecorationImage(
                                        image: NetworkImage("$kCDNUrl/users/${data.image}"),
                                        fit: BoxFit.cover,
                                      )),
                            child: CommonSvgPicture(
                              Assets.icons.changePhotoIcon,
                            ),
                          ),
                        ),
                        const Gap(15),
                        Text(
                          data.name,
                          style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
                        ),
                        const Gap(10),
                        Text(
                          formatAsPhoneNumber(data.phone)!,
                          style: context.textTheme.labelSmall?.copyWith(fontSize: 14),
                        ),
                        const Gap(20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              context.push(AppRoute.balance.routePathWithSlash);
                            },
                            child: Ink(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    const Color.fromARGB(255, 84, 175, 76).withOpacity(0.7),
                                    Colors.green,
                                  ]),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        context.l10n.myBalance,
                                        style: context.textTheme.bodySmall?.copyWith(color: Colors.white),
                                      ),
                                      const Gap(15),
                                      Text(
                                        context.l10n.productPrice(
                                          kPriceFormatter.format(data.balance),
                                        ),
                                        style: context.textTheme.bodyMedium?.copyWith(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    context.l10n.fillBalance,
                                    style: textTheme.labelSmall?.copyWith(color: Colors.white, fontSize: 16),
                                  ),
                                  const Gap(5),
                                  CommonSvgPicture(Assets.icons.profileAdd)
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Gap(25),
                        const MainTilesView(),
                        const Gap(20),
                        const HelpTilesView(),
                        ListTile(
                          onTap: () {
                            ref.read(authNotifierProvider.notifier).signOut();
                          },
                          leading: CommonSvgPicture(Assets.icons.logOut),
                          title: Text(
                            context.l10n.exit,
                            style:
                                context.textTheme.labelSmall!.copyWith(color: context.colorScheme.error, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            error: (error, s) => Center(
                  child: Text(
                    error.toString(),
                    style: textTheme.bodyLarge?.copyWith(color: context.colorScheme.error),
                  ),
                ),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )),
      ),
    );
  }

  _getFromCamera() async {
    final XFile? pickedFile = await _picker.pickImage(
      maxWidth: 1920,
      maxHeight: 2000,
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      if (!mounted) return;
      ref.read(imageUpdateProvider.notifier).setProfileImage(pickedFile.path).then((v) => Navigator.pop(context));
      if (!mounted) return;
      setState(() {});
    }
  }

  _getFromGalery() async {
    final XFile? pickedFile = await _picker.pickImage(
      maxWidth: 1920,
      maxHeight: 2000,
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      if (!mounted) return;
      ref.read(imageUpdateProvider.notifier).setProfileImage(pickedFile.path).then((v) => Navigator.pop(context));
      if (!mounted) return;
      setState(() {});
    }
  }
}
