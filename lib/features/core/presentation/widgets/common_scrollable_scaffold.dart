import 'package:flutter/material.dart';

import '../components/common_appbar.dart';

class CommonScrollabeScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? bottomWidget;

  const CommonScrollabeScaffold({
    super.key,
    required this.title,
    required this.child,
    this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        bottomNavigationBar: bottomWidget,
        body: CustomScrollView(
          slivers: [
            CommonSliverAppBar(title: title),
            SliverToBoxAdapter(child: child),
          ],
        ),
      ),
    );
  }
}
