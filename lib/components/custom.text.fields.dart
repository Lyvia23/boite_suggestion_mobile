import 'package:boite_suggestion/theme/Palette.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? obscureText;
  final int? maxLines;
  final Color? hintColor;
  final int? maxLength;
  final TextInputType? keyboardType;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final Function(String value)? onChanged;
  const CustomTextField(
      {super.key,
      this.controller,
      this.hintText,
      this.obscureText,
      this.maxLines,
      this.hintColor,
      this.keyboardType,
      this.maxLength,
      this.prefixIcon,
      this.suffixIcon,
      this.onChanged,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Palette.tirthGreenColor),
      child: TextFormField(
        obscureText: obscureText ?? false,
        controller: controller,
        style: TextStyle(
          fontSize: 16,
          color: hintColor ?? Palette.blackColor,
          decoration: TextDecoration.none,
        ),
        onChanged: onChanged,
        keyboardType: keyboardType,
        maxLines: maxLines ?? 1,
        maxLength: maxLength,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            prefixIconColor: Palette.blackColor,
            suffixIconColor: Palette.blackColor,
            fillColor: Palette.errorRedColor,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide:
                     BorderSide(width: 0.4, color: Palette.blackColor.withOpacity(.4))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                    width: 0.4, color: hintColor ?? Palette.blackColor.withOpacity(.4))),
            hintText: hintText,
            hintStyle:
                TextStyle(fontSize: 16, color: hintColor ?? Palette.blackColor.withOpacity(.5)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 18)),
      ),
    );
  }
}
