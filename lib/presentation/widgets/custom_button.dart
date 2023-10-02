import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.buttonText,
      required this.onTap,
      this.isSolidButton = true,
      this.buttonColor});

  final String? buttonText;
  final VoidCallback onTap;
  final bool isSolidButton;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isSolidButton
              ? (buttonColor ?? Colors.white)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: buttonColor ?? Colors.white),
        ),
        child: Center(
            child: Text(
          buttonText ?? 'Custom Button',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSolidButton
                  ? Colors.black87
                  : (buttonColor ?? Colors.white)),
        )),
      ),
    );
  }
}
