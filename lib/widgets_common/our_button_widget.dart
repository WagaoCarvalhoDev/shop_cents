import 'package:flutter/material.dart';
import 'package:shop_cents/consts/consts.dart';

class OurButtonWidget extends StatelessWidget {
  const OurButtonWidget({
    Key? key,
    required this.onPress,
    required this.title,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  final VoidCallback onPress;
  final String title;
  final MaterialStateProperty<Color> color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: color,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: bold,
          color: textColor,
        ),
      ),
    );
  }
}
