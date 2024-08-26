import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final TextInputType textInputType;
  final bool isPasswordField;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  // final String? Function(String?)? onChange;
  const CustomTextFormField({
    required this.textInputType,
    required this.isPasswordField,
    required this.textEditingController,
    required this.validator,
    // required this.onChange,
    super.key,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputType,
      controller: widget.textEditingController,
      obscureText: widget.isPasswordField ? isVisible : false,
      validator: widget.validator,
      // onChanged: widget.onChange,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.grayColor,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.transparent,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.transparent,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
        suffixIcon: widget.isPasswordField
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: Icon(isVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined),
              )
            : null,
        suffixIconColor: AppColors.whiteColor.withOpacity(0.4),
      ),
    );
  }
}
