import 'package:flutter/material.dart';
import '../core.dart';

class CustomButtonTraining extends StatelessWidget {
  final String title;
  final Widget? prefixIcon;
  final Function() onPressed;
  final Color? backgroundColor;

  const CustomButtonTraining({
    super. key,
    required this.title,
    this.prefixIcon,
    required this.onPressed,
    this.backgroundColor,
  });

@override

Widget build(BuildContext context) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor ?? Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      minimumSize: const Size.fromHeight(55),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        prefixIcon ?? const SizedBox(),
        const SpaceWidth(10),
         Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.white),
        )
      ],
    ),
  );
}
}