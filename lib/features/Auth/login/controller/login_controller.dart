import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var forgotPassController = TextEditingController().obs;
  var newPassController = TextEditingController().obs;
  var confirmPasswordController = TextEditingController().obs;

  RxString emailError = ''.obs;
  RxString passwordError = ''.obs;
  var isSubmitted = false.obs;

  void validateLogin() {
    isSubmitted.value = true;

    emailError.value = '';
    passwordError.value = '';

    if (emailController.value.text.isEmpty) {
      emailError.value = 'Email cannot be empty';
    } else if (!GetUtils.isEmail(emailController.value.text)) {
      emailError.value = 'Enter a valid email';
    }

    if (passwordController.value.text.isEmpty) {
      passwordError.value = 'Password cannot be empty';
    }

    if (emailError.value.isEmpty && passwordError.value.isEmpty) {
      // Proceed with login
    }
  }
}
