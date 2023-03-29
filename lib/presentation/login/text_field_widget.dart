import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.textFormFieldColor,
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 3, color: AppColors.textFormFieldColor),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
