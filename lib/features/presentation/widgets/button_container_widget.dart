import 'package:flutter/material.dart';
import 'package:insta_clone_clean_arch/features/core.dart';

class ButtonContainerWidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final VoidCallback? onTapListener;

  const ButtonContainerWidget({
    Key? key,
    this.color,
    this.text,
    this.onTapListener,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapListener,
      child: Container(
        padding: const EdgeInsets.all(5),
        width: 120,
        height: 30,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
                color: primaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
