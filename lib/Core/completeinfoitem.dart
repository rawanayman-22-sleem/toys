import 'package:flutter/material.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Core/customtextformfield.dart';

class CompleteInfoItem extends StatelessWidget {
  final String text;
  final TextInputType? inputType;
  final int? maLines;
  const CompleteInfoItem({
  Key?key,
    required this.text,
    this.inputType,
    this.maLines})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: pinkliite,
          height: 1.5625,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        Customtextformfield (
          maxLines: maLines,
          inputType: inputType,
        )


      ],
    );
  }
}
