import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BooksActionBody extends StatelessWidget {
  const BooksActionBody({
    super.key,
    required this.text,
    required this.borderRadius,
    required this.textColor,
    required this.backgroundColor,
  });
  final String text;
  final BorderRadius? borderRadius;
  final Color textColor;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius:borderRadius?? BorderRadius.circular(12),
            )),
        child: Text(
          text,
          style: Styles.textstyle16.copyWith(
              color: textColor, fontWeight: FontWeight.w900, fontSize: 18),
        ));
  }
}
