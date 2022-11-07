import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormFled extends StatelessWidget {
  const CustomTextFormFled({
    Key? key,
    required this.title,
    required this.validate,
    required this.controller,
    this.inputFormatters,
    required this.formkey,
  }) : super(key: key);
  final List<TextInputFormatter>? inputFormatters;
  final GlobalKey<FormState> formkey;
  final String? title;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validate;
  @override
  Widget build(BuildContext context) {
    /////////////////////////Custom textform Field

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 48,
        width: 320,
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: inputFormatters ?? [],
          validator: validate,
          controller: controller,
          decoration: InputDecoration(
            hintText: title,
            hintStyle: GoogleFonts.poppins(
              fontSize: 14,
              color: const Color(0xffAFB0B0),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff914686),
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff914686),
                style: BorderStyle.solid,
                width: .8,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
