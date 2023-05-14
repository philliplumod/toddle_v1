import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toddle/utilities/theme.dart';

import '../utilities/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final String? label;
  final TextEditingController? controller;
  final IconData? icon;
  final IconData? suffixIcon;
  final VoidCallback? onPressed;
  const CustomTextField({
    Key? key,
    this.icon,
    this.hint,
    this.label,
    this.onPressed,
    this.suffixIcon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: controller,
        style: subtextStyle,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Get.isDarkMode ? defaultColor : nightColor,
            size: 20,
          ),
          suffixIcon: IconButton(
              onPressed: onPressed,
              icon: Icon(suffixIcon,
                  color: Get.isDarkMode ? defaultColor : nightColor, size: 20)),
          hintText: hint,
          labelText: label,
          labelStyle: subtextStyle,
          hintStyle: subtextStyle,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                  color: Get.isDarkMode ? defaultColor : nightColor, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                  color: Get.isDarkMode ? defaultColor : nightColor, width: 1)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                color: Get.isDarkMode ? defaultColor : nightColor, width: 1),
          ),
        ),
      ),
    );
  }
}
