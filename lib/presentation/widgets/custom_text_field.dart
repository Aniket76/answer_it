import 'package:answer_it/presentation/manager/color_manager.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    this.label,
    this.hintText,
    this.errorText,
    this.isPasswordHidden,
    this.onPasswordIconTap,
    super.key,
  });

  final TextEditingController controller;
  final String? label;
  final String? hintText;
  final String? errorText;
  final bool? isPasswordHidden;
  final VoidCallback? onPasswordIconTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPasswordHidden ?? false,
      controller: controller,
      decoration: InputDecoration(
          label: Text(label ?? 'Label Text'),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          hintText: hintText,
          errorText: errorText,
          suffixIcon: (isPasswordHidden == null)
              ? null
              : IconButton(
                  onPressed: onPasswordIconTap?.call,
                  icon: Icon(
                    isPasswordHidden ?? true
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: ColorManager.headerTextColor,
                  ),
                )),
    );
  }
}
