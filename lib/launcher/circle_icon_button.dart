import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final Function() onTap;
  final Widget icon;
  final Color? containerColor;
  final bool hasShadow;

  const CircleIconButton({
    Key? key,
    required this.onTap,
    required this.icon,
    this.containerColor,
    this.hasShadow = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: containerColor ?? Theme.of(context).cardColor,
          boxShadow: [
            // darker bottom right
            if (hasShadow)
              BoxShadow(
                color: Colors.grey.shade300,
                offset: const Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 2,
              ),
          ],
        ),
        child: icon,
      ),
    );
  }
}
