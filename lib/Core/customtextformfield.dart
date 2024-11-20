import 'package:flutter/material.dart';
import 'package:toy_shop/Core/Colores.dart';

class Customtextformfield extends StatelessWidget {
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChanged;
  final int? maxLines;

  const Customtextformfield({
   Key?key,
   @required this.inputType,
    this.suffexIcon,
    @required this.onSaved,
    this.maxLines,
    this.onChanged})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        fillColor: Colors.red,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
           // color: greyColor
          )
        )
      ),
    );
  }
}
