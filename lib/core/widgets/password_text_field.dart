import 'package:blog_app_clean_arch/core/theme/color_pallete.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, required this.textEditingController, required this.prefixIconData, required this.hintTxt, this.validator});
  final TextEditingController textEditingController;
  final IconData prefixIconData;
  final String hintTxt;
  final String? Function(String?)? validator;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {

  bool isObscureText = false;


  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: widget.validator,
       controller: widget.textEditingController,
       decoration: InputDecoration(
         contentPadding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
         hintText: widget.hintTxt,
         prefixIcon:  Icon(widget.prefixIconData),
         suffixIcon:  GestureDetector(
           onTap: () {
             isObscureText = !isObscureText;
             setState(() {});
           },
           child: isObscureText
               ? const Icon(
             Icons.visibility_off,
           )
               : const Icon(
             Icons.visibility,
           ),
         ),
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
