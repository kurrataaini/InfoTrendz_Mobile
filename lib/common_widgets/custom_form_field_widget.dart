import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';
import '../shared/theme.dart';

class CustomFormFieldWidget extends StatelessWidget {
  const CustomFormFieldWidget({
    super.key,
    required this.labelText,
    this.controller,
    this.isObsecure = false,
  });
  final String labelText;
  final bool isObsecure;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          obscureText: isObsecure,
          style: blackTextStyle,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: Sizes.p20,
              horizontal: Sizes.p16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            labelText: labelText,
          ),
        ),
      ],
    );
  }
}
