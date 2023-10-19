import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController emailReset = TextEditingController();
  var isObscure = true.obs;
  var emailSent = false.obs;


}
