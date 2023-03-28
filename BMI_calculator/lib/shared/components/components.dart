import 'package:flutter/material.dart';

Widget defaultButton({
  required Function() function,
  required String text,
  double width = double.infinity,
  Color background = Colors.red,
  bool isUpperCase = true,
  double radius = 15,
}) =>
    Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(isUpperCase ? text.toUpperCase() : text,
            style: const TextStyle(color: Colors.white)),
      ),
    );

Widget defaultFormField({
  required String label,
  required IconData prefix,
  IconData? suffix = null,
  TextInputType inputType = TextInputType.emailAddress,
  required TextEditingController controller,
  required String? Function(String?) validate,
  Function(String?)? onSubmit,
  Function(String?)? onChange,
  Function()? onSuffixPress,

  bool isPassword = false,
}) =>
    TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefix),
        suffixIcon: suffix== null ? null : IconButton(
          onPressed: onSuffixPress,
          icon: Icon(suffix),
        ),
      ),
      keyboardType: inputType,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      validator: validate,
      controller: controller,
      obscureText: isPassword ? true : false,
    );
