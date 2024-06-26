import 'package:bama_otp_verification/controllers/get_otp_controller.dart';
import 'package:bama_otp_verification/controllers/verify_phone_controller.dart';
import 'package:bama_otp_verification/ui/get_otp_page.dart';
import 'package:bama_otp_verification/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    init();
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.otpPage,
      // home: GetOtpPage(),
    );
  }
}

init() {
  Get.lazyPut(() => GetOtpController());
  Get.lazyPut(() => VerifyPhoneController());
}
