import 'package:flutter/material.dart';
import 'package:shop_cents/consts/consts.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    Key? key,
    required this.title,
    required this.hint,
    //required this.controller,
  }) : super(key: key);

  final String title;
  final String hint;

  //final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: redColor,
            fontFamily: semibold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          //controller: controller,
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontFamily: semibold,
              color: textfieldGrey,
            ),
            hintText: hint,
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: redColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
