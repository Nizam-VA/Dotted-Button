import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedButton extends StatelessWidget {
  const DottedButton({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.icon,
    required this.color,
    required this.onPressed,
  });
  final double width;
  final double height;
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(20),
        dashPattern: const [5, 5],
        color: Colors.green,
        strokeWidth: 1.5,
        child: SizedBox(
          width: width,
          height: height * .13,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color),
            ],
          ),
        ),
      ),
    );
  }
}
