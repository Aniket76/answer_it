import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.controller,
      this.labelText,
      this.hintText,
      this.errorText,
      super.key});

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: (labelText != null) ? Text(labelText ?? '') : null,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        hintText: hintText,
        errorText: errorText,
      ),
    );
  }
}
