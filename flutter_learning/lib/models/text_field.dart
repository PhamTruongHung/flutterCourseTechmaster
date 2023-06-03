// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Icon? suffixIcon;
  final bool obscureText;
  final String lable;
  final String? defaultValue;
  final VoidCallback? onSuffixIconClick;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.suffixIcon,
    this.obscureText = false,
    required this.lable,
    this.defaultValue,
    this.onSuffixIconClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (defaultValue != null) {
      controller.text = defaultValue!;
    }
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lable,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                suffixIcon: suffixIcon != null && onSuffixIconClick != null
                    ? IconButton(
                        onPressed: onSuffixIconClick, icon: suffixIcon!)
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
