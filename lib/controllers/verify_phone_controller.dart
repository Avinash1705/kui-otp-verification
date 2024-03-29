import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VerifyPhoneController extends GetxController {
  Map<int, String> otpMap = Map();
  String finalOtp = "";
  bool visibilty = true;
  var timer = "Verification Code expires in";
  var verifyColor = Colors.grey.obs;
  var getOtpButtonColor = Colors.grey.obs;
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();
  TextEditingController con3 = TextEditingController();
  TextEditingController con4 = TextEditingController();
  TextEditingController con5 = TextEditingController();
  TextEditingController con6 = TextEditingController();


  checkText(BuildContext context) {
    finalOtp =
        con1.text + con2.text + con3.text + con4.text + con5.text + con6.text;
    verifyOtp(finalOtp);
  }

  verifyOtp(String otp) {
    if (otp.length == 6 && otp == "123456") {
      verifyColor.value = Colors.green;
      timer = "Correct Otp";
    } else if (otp != "123456" && otp.length == 6) {
      verifyColor.value = Colors.red;
      timer = "Incorrect Otp";
    } else if(otp != "123456"){
      verifyColor.value = Colors.red;
      timer = "Incorrect Otp";
    }
    else {
      verifyColor.value = Colors.grey;
    }
    update();
  }
  pasteOtp() async{
    Clipboard.getData(Clipboard.kTextPlain).then((value){
      var dd = value?.text;
      verifyOtp(value!.text.toString());
      con1.text = dd![0];
      con2.text = dd[1];
      con3.text = dd[2];
      con4.text = dd[3];
      con5.text = dd[4];
      con6.text = dd[5];
    });
  }
}
