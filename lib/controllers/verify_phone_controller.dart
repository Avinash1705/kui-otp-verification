import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyPhoneController extends GetxController {
  Map<int, String> otpMap = Map();
  String finalOtp = "";
  var verifyColor = Colors.grey.obs;
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();
  TextEditingController con3 = TextEditingController();
  TextEditingController con4 = TextEditingController();
  TextEditingController con5 = TextEditingController();
  TextEditingController con6 = TextEditingController();


  checkText(BuildContext context) {

    finalOtp =
        con1.text + con2.text + con3.text + con4.text + con5.text + con6.text;

    // if(finalOtp.length < 6){
    //
    // }
    // else if(finalOtp.length == 6){
    //   FocusScope.of(context).unfocus();
    // }
    // else {
    //   FocusScope.of(context).previousFocus();
    // }
    verifyOtp(finalOtp);
  }

  verifyOtp(String otp) {
    if (otp.length == 6 && otp == "123456") {
      verifyColor.value = Colors.green;
    } else if (otp != "123456" && otp.length == 6) {
      verifyColor.value = Colors.red;
    } else {
      verifyColor.value = Colors.grey;
    }
    update();
  }
  pasteOtp(){

  }
// verifyOtp(int i, String value) {
//   String urOtp = "";
//   //let 123456 is correct otp
//   otpMap.forEach((key, value) {
//     urOtp = urOtp+value;         //otp update
//   });
//   print("urOtp $urOtp");
//   if(urOtp.length != 6){              //otp length less reduce size
//     otpMap.removeWhere((key, value) => value.isEmpty);
//   }
//
//   if (urOtp == "123456") {
//     print("correct otp");
//     verifyColor.value = Colors.green;
//   } else if(urOtp != "123456" && urOtp.length ==6){
//     print("wrong otp");
//     verifyColor.value = Colors.red;
//   }
//   else {
//     verifyColor.value = Colors.grey;
//   }
//   update();
// }
//
// //specific container connect
// //updating at specific index
// updateOtp(int i, String value) {
//   otpMap[i] = value;
// }
}
