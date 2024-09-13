import 'package:flutter/material.dart';

class ATextFormFieldTheme {
  ATextFormFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle()
        .copyWith(fontSize: 14, color: Colors.black.withOpacity(0.8)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.orange, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.red, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.black, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    border: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
  );
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle()
        .copyWith(fontSize: 14, color: Colors.white.withOpacity(0.8)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.orange, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.red, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    border: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
  );
}
