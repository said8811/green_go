import 'package:flutter/material.dart';
import 'package:green_go/theme/colors.dart';

class CommonTrailingIcon extends StatelessWidget {
  final Color color;
  const CommonTrailingIcon({
    super.key,
    this.color = AppColors.text1,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.arrow_forward_ios, size: 14, color: color);
  }
}
