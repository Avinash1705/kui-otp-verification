import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyPhoneController extends GetxController {
  // var otp;
  Map<int,String> otpMap = Map();
  // String finalOtp = "";

  var verifyColor = Colors.grey.obs;
  verifyOtp(int i, String value) {
    String urOtp = "";
    //let 123456 is correct otp
    otpMap.forEach((key, value) {
      print("map $key $value");
      urOtp = urOtp+value;         //otp update
    });
    if(urOtp.length != 6){              //otp length less reduce size 
      otpMap.removeWhere((key, value) => value.isEmpty);
    }

    if (urOtp == "123456") {
      print("correct otp");
      verifyColor.value = Colors.green;
    } else if(urOtp != "123456" && urOtp.length ==6){
      print("wrong otp");
      verifyColor.value = Colors.red;
    }
    else {
      verifyColor.value = Colors.grey;
    }
    update();
  }

  //specific container connect
  //updating at specific index
  updateOtp(int i, String value) {
    otpMap[i] = value;
  }
}
