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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OtpContainer(
                        controller: verifyPhoneController.con1,
                        onChange: (value)=> verifyPhoneController.checkText(),
                      ),
                      OtpContainer(
                        controller: verifyPhoneController.con2,
                        onChange: (value) => verifyPhoneController.checkText(),
                      ),
                      OtpContainer(
                        controller: verifyPhoneController.con3,
                        onChange: (value) => verifyPhoneController.checkText(),
                      ),
                      OtpContainer(
                        controller: verifyPhoneController.con4,
                        onChange: (value) => verifyPhoneController.checkText(),
                      ),
                      OtpContainer(
                        controller: verifyPhoneController.con5,
                        onChange: (value) => verifyPhoneController.checkText(),
                      ),
                      OtpContainer(
                        controller: verifyPhoneController.con6,
                        onChange: (value) => verifyPhoneController.checkText(),
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
                  verifyPhoneController.checkText();
                },
                child: Obx(
                  () => Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                        color: verifyPhoneController.verifyColor.value,
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
