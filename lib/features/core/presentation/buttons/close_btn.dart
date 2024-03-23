import '../../../../theme/colors.dart';
import 'package:flutter/material.dart';

class CustomCloseBtn extends StatelessWidget {
  final Function()? onPress;
  final double size;
  const CustomCloseBtn({super.key, this.onPress, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (onPress != null) {
          onPress!();
        } else {
          Navigator.pop(context);
        }
      },
      icon: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          color: AppColors.black,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.2),
          //     spreadRadius: 3,
          //     blurRadius: 3,
          //     offset: const Offset(0, 1), // changes position of shadow
          //   ),
          // ],
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            Icons.close,
            size: size,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
