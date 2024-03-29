import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common/otp_container.dart';
import '../controllers/get_otp_controller.dart';
import '../controllers/verify_phone_controller.dart';

class VerifyPhoneNumberPage extends StatelessWidget {
  const VerifyPhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var verifyPhoneController = Get.find<VerifyPhoneController>();

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Verify your phone",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Enter the verification code send to"),
              Text(
                "91xxxxxxxx4",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 40,
              ),
              Obx(
                () => Container(
                  width: double.maxFinite,
                  height: 150,
                  decoration: BoxDecoration(
                      color: verifyPhoneController.verifyColor.value),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OtpContainer(
                            controller: verifyPhoneController.con1,
                            onTap: () => verifyPhoneController.pasteOtp(),
                            onChange: (value) {
                              if (verifyPhoneController.con1.text != "") {
                                FocusScope.of(context).nextFocus();
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                              verifyPhoneController.checkText(context);
                            },
                          ),
                          OtpContainer(
                            controller: verifyPhoneController.con2,
                            onChange: (value) {
                              if (verifyPhoneController.con2.text != "") {
                                FocusScope.of(context).nextFocus();
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                              verifyPhoneController.checkText(context);
                            },
                          ),
                          OtpContainer(
                            controller: verifyPhoneController.con3,
                            onChange: (value) {
                              if (verifyPhoneController.con3.text != "") {
                                FocusScope.of(context).nextFocus();
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                              verifyPhoneController.checkText(context);
                            },
                          ),
                          OtpContainer(
                            controller: verifyPhoneController.con4,
                            onChange: (value) {
                              if (verifyPhoneController.con4.text != "") {
                                FocusScope.of(context).nextFocus();
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                              verifyPhoneController.checkText(context);
                            },
                          ),
                          OtpContainer(
                            controller: verifyPhoneController.con5,
                            onChange: (value) {
                              if (verifyPhoneController.con5.text != "") {
                                FocusScope.of(context).nextFocus();
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                              verifyPhoneController.checkText(context);
                            },
                          ),
                          OtpContainer(
                            controller: verifyPhoneController.con6,
                            onChange: (value) {
                              if (verifyPhoneController.con6.text != "") {
                                FocusScope.of(context).nextFocus();
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                              verifyPhoneController.checkText(context);
                            },
                          ),
                        ],
                      ),
                      TweenAnimationBuilder<Duration>(
                        duration: Duration(minutes: 2),
                        tween: Tween(
                            begin: Duration(minutes: 2), end: Duration.zero),
                        onEnd: () {
                          verifyPhoneController.checkText(context);
                          verifyPhoneController.visibilty = false;
                          verifyPhoneController.getOtpButtonColor.value =
                              Colors.blueGrey;
                        },
                        builder: (BuildContext context, Duration? value,
                            Widget? child) {
                          final minutes = value?.inMinutes;
                          final seconds = value!.inSeconds % 60;
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${verifyPhoneController.timer}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Visibility(
                                visible: verifyPhoneController.visibilty,
                                child: Text(
                                  " $minutes:$seconds",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 140,
              ),
              InkWell(
                onTap: () {
                  verifyPhoneController.checkText(context);
                },
                child: Obx(
                  () => Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                        color: verifyPhoneController.getOtpButtonColor.value,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: const Center(
                      child: Text(
                        "Get OTP",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
