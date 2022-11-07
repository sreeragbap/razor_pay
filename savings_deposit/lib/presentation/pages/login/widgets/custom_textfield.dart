// ignore_for_file: must_be_immutable

import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomTextfield extends StatelessWidget {
  String hintText;
  double textFieldWidth;
  double textFieldHeight;
  Icon? prefixIcon;
  Widget? suffixIcon;
  bool? showPassword;
  void Function(String)? onFieldSubmitted;
  List<TextInputFormatter>? inputFormatter;
  TextEditingController customTextfieldController;
  void Function(String)? onChanged;
  CustomTextfield({
    Key? key,
    required this.hintText,
    required this.textFieldWidth,
    required this.textFieldHeight,
    this.prefixIcon,
    this.onFieldSubmitted,
    this.inputFormatter,
    required this.customTextfieldController,
    this.suffixIcon,
    this.showPassword,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: const NeumorphicStyle(
        color: Color(0xFFD8D6D8),
        depth: 5,
        intensity: 0.75,
      ),
      child: SizedBox(
        height: textFieldHeight,
        width: textFieldWidth,
        child: TextFormField(
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted ?? (value) {},
          inputFormatters: inputFormatter,
          obscureText: showPassword == null ? false : showPassword!,
          controller: customTextfieldController,
          autofocus: false,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 31, 57, 225),
              ),
            ),
            enabledBorder: InputBorder.none,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xFFD8D6D8),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xff914686),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
