import 'package:boite_suggestion/theme/Palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBottonNavigation extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? textColor;
  final Color? backgroundColor;
  final bool? bordered;
  final Color? borderColor;
  const CustomBottonNavigation(
      {super.key,
      this.borderRadius,
      this.textColor,
      this.backgroundColor,
      this.bordered,
      this.borderColor,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? 55,
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Palette.whiteColor,
            border: Border.all(
                width: bordered == true ? 1.6 : 0,
                color: borderColor ?? Palette.blackColor),
            borderRadius: BorderRadius.circular(borderRadius ?? 25)),
        child: Row(
          children: [
            Expanded(child: Image.asset('assets/images/Home.png')),
            Expanded(
              child: Container(
               margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: Palette.primaryColor,
                    border: Border.all(
                        width: bordered == true ? 1.6 : 0,
                        color: borderColor ?? Palette.blackColor),
                    borderRadius: BorderRadius.circular(borderRadius ?? 25)),

              ),
            ),
            // Expanded(child: Image.asset('assets/images/Person.png'))
          ],
        ));
  }
}
