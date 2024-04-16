import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:green_go/features/core/presentation/extensions/widget_extensions.dart';
import 'package:green_go/features/core/shared/extensions/theme_extensions.dart';
import 'common_list_tile.dart';

class CommonExpandablePanel extends StatelessWidget {
  final String title;
  final String? value;
  final Widget? child;

  final IconData? maximizeIcon;
  final IconData? minimizeIcon;
  final bool useDivider;
  final bool childPadded;

  const CommonExpandablePanel({
    super.key,
    required this.title,
    this.value,
    this.child,
    this.maximizeIcon,
    this.minimizeIcon,
    this.useDivider = true,
    this.childPadded = false,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: ExpandableThemeData(
          hasIcon: true,
          collapseIcon: minimizeIcon,
          expandIcon: maximizeIcon,
          tapBodyToCollapse: true,
          iconPadding: const EdgeInsets.only(right: 16),
          tapBodyToExpand: true,
          tapHeaderToExpand: true,
          useInkWell: true,
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          iconPlacement: ExpandablePanelIconPlacement.right,
          alignment: Alignment.center,
          iconColor: context.colorScheme.textColor,
          inkWellBorderRadius: BorderRadius.circular(10)),
      header: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: context.textTheme.bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      collapsed: const SizedBox(),
      expanded: child ??
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 16),
            padding: EdgeInsets.only(bottom: 16, left: childPadded ? 16 : 0),
            decoration: BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: context.colorScheme.dividerColor))),
            child: Text(value!),
          ),
    );
  }
}

class CommonExpandableListView<T> extends StatelessWidget {
  final String title;
  final List<T> items;
  final Widget Function(int index) child;
  final IconData? expandIcon;
  final IconData? minimizeIcon;
  final bool childPadded;
  final TextStyle? titleStyle;
  final EdgeInsets? titlePadding;
  final Widget? divider;
  final ExpandableController? controller;

  const CommonExpandableListView({
    super.key,
    required this.title,
    required this.items,
    required this.child,
    this.expandIcon,
    this.minimizeIcon,
    this.childPadded = true,
    this.titleStyle,
    this.titlePadding,
    this.divider,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: ExpandableThemeData(
        hasIcon: true,
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        iconPadding: const EdgeInsets.only(right: 16),
        iconColor: context.colorScheme.textColor,
        expandIcon: expandIcon,
        collapseIcon: minimizeIcon,
        tapBodyToExpand: true,
        tapBodyToCollapse: true,
        tapHeaderToExpand: true,
      ),
      header: CommonListTile(
        title: title,
        customTitleStyle: titleStyle,
        padding: titlePadding,
        key: key,
      ),
      builder: (_, collapsed, expanded) {
        return Expandable(
          collapsed: collapsed,
          expanded: expanded,
          theme: const ExpandableThemeData(crossFadePoint: 0),
        );
      },
      collapsed: const SizedBox(),
      expanded: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: childPadded ? const EdgeInsets.only(left: 16) : null,
        itemBuilder: (context, index) {
          return child(index);
        },
        separatorBuilder: (_, __) => divider ?? const Divider().indented(),
        itemCount: items.length,
      ),
    );
  }
}
