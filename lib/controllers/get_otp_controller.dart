import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class GetOtpController extends GetxController {
  var mobileController = TextFormField();
  String? mobileNumber;
  RxInt count = 0.obs;
  var toggleColor = false.obs;

  isValidContact(String value) {
    if (value.isEmpty) {
      toggleColor.value = false;
      return "It cant be empty";
    }
    else if (value.length == 10) {
      toggleColor.value = true;
      return "Correct";
    }
    else {
      toggleColor.value = false;
    }
    // update();
  }
}
