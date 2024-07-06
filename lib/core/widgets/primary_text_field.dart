import 'package:blog_app_clean_arch/core/theme/color_pallete.dart';
import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({super.key, required this.textEditingController, required this.prefixIconData, required this.hintTxt, this.validator});
  final TextEditingController textEditingController;
  final IconData prefixIconData;
  final String hintTxt;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: validator,
       controller: textEditingController,
       decoration: InputDecoration(
         contentPadding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
         hintText: hintTxt,
         prefixIcon:  Icon(prefixIconData),
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(16),
           borderSide: const BorderSide(color: AppPalette.greyColor),
         ),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(16),
           borderSide: const BorderSide(color: AppPalette.greyColor),
         ),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(16),
           borderSide: const BorderSide(color: AppPalette.gradient2),
         ),
         errorBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(16),
           borderSide: const BorderSide(color: AppPalette.errorColor),
         ),
       ),
    );
  }
}
