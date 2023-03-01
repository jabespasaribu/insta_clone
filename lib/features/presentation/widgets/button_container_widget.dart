import 'package:flutter/material.dart';
import 'package:insta_clone_clean_arch/features/core.dart';

class ButtonContainerWidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final VoidCallback? onTapListener;
  final bool? isIconed;
  final IconData? icon;

  const ButtonContainerWidget({
    Key? key,
    this.color = blueColor,
    this.text,
    this.onTapListener,
    this.icon,
    this.isIconed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapListener,
      child: Container(
        padding: const EdgeInsets.all(5),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: isIconed == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon!),
                    sizeHor(10),
                    Text(text!,
                        style: const TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold)),
                  ],
                )
              : Text(
                  text!,
                  style: const TextStyle(
                      color: primaryColor, fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
