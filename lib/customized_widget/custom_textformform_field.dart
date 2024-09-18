import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final Color borderColor;
  final Color? hintColor;
  final num? maxLength;
  final Function(String)? onChanged;
  final TextInputType inputType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? formatter;
  final String? counterText;
  final FocusNode? focusNode;
  final bool autoFocus;
  final TextInputAction? textInputAction;
  final Function(String)? onSubmitted;
  final bool readOnly;
  final bool enable;
  final bool isObscureText;
  final AutovalidateMode? autovalidateMode;
  final int minLines ;
  final int maxLines ;



  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.focusNode,
    this.autoFocus = false,
    this.maxLength,
    this.textInputAction,
    this.onSubmitted,
    this.readOnly = false,
    this.enable = true,
    this.isObscureText = false,
    this.minLines = 1,
    this.maxLines = 2,
    this.borderColor = Colors.black,
    this.hintColor =Colors.amber,
    this.onChanged, this.inputType = TextInputType.text, this.prefixIcon, this.formatter, this.counterText, this.suffixIcon, this.autovalidateMode
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      minLines: minLines,
      enabled: enable,
      textInputAction: textInputAction,
      onFieldSubmitted: onSubmitted,
      autofocus: autoFocus,
      focusNode: focusNode,
      inputFormatters: formatter,
      onChanged: onChanged,
      keyboardType: inputType,
      controller: controller,
      readOnly: readOnly,
      obscureText: isObscureText,
      maxLength: maxLength == null ? null : (maxLength ?? 0).toInt(),
      validator: validator,
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
          counterText: counterText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.grey,
          hintText: hintText,
          // labelText: hintText,
          labelStyle: TextStyle(color: borderColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(color: hintColor, fontWeight: FontWeight.normal),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: .5, color: borderColor ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: borderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: borderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: borderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20)),

    );
  }
}


class CustomAmountFieldForBottomSheet extends StatelessWidget {
  const CustomAmountFieldForBottomSheet({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: TextFormField(
        showCursor: true,
        readOnly: true,
        style: const TextStyle(fontSize: 45),
        maxLines: 1,
        textDirection: TextDirection.ltr,
        controller: controller,
        keyboardType: TextInputType.none,
        textAlign: TextAlign.center,
        validator: (value) {
          //return controller.validateNumber(value);
        },
        decoration: InputDecoration(
            prefixText: "\$",
            prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
            prefixStyle: const TextStyle(fontSize: 45),
            hintStyle: const TextStyle(fontSize: 45),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: ""),
      ),
    );
  }
}
