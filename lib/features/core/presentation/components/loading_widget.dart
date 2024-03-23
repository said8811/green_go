import 'package:flutter/material.dart';
import '../../../../theme/colors.dart';

class LoadingWidget extends StatelessWidget {
  final Color color;
  final Color? backgroundColor;
  const LoadingWidget({
    super.key,
    this.color = AppColors.primary,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(color),
        strokeWidth: 2,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
