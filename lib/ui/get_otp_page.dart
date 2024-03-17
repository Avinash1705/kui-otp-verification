import 'package:bama_otp_verification/ui/verify_phone_number_page.dart';
import 'package:bama_otp_verification/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controllers/get_otp_controller.dart';

class GetOtpPage extends StatelessWidget {
  const GetOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetOtpController otpController = GetOtpController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter your mobile no",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("We need to verify your number"),
            SizedBox(
              height: 40,
            ),
            TextFormField(
                controller: otpController.mobileController.controller,
                maxLength: 10,
                decoration: InputDecoration(
                    hintText: "Enter mobile number",
                    border: OutlineInputBorder()),
                onChanged: (value) {
                  otpController.isValidContact(value);
                  otpController.mobileNumber = value;
                  print(otpController.mobileNumber);
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) =>
                    otpController.isValidContact(value!)
            ),
            SizedBox(
              height: 140,
            ),
            InkWell(
              onTap: () =>
              otpController.toggleColor.value ? Get.toNamed(
                  AppRoutes.getVerifyPhoneNumberPage()):null,
              child: Obx(() =>
                  Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                        color: otpController.toggleColor.value
                            ? Colors.black
                            : Colors.grey,
                        borderRadius: const BorderRadius.all(
                            Radius.circular(5))),
                    child: const Center(
                      child: Text(
                        "Get OTP",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
              ),
            ),
            Obx(() => Text("${otpController.count}")),
          ],
        ),
      ),
    );
  }
}
