import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.active = false,
      required this.controller,
      required this.title, this.onChange, this.onComplete, this.focusNode,  this.obscureText=false});

  final bool active;
  final bool obscureText;
  final String title;
  final Function(String)? onChange;
  final Function()? onComplete;
  final FocusNode? focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: ColorsApp.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(focusNode:focusNode ,
          autofocus: true,
          textInputAction: TextInputAction.next,
          readOnly: !active,
          controller: controller,
          style: const TextStyle(
            color: ColorsApp.tFTColor,
            fontSize: 14,
          ),
          obscureText: obscureText,
          onChanged:onChange ,
          onEditingComplete:onComplete ,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),

            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: ColorsApp.tFBackGroundColor,
            focusColor: ColorsApp.tFBackGroundColor,

          ),
        )
      ],
    );
  }
}
