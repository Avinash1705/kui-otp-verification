import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../ui/get_otp_page.dart';
import '../ui/verify_phone_number_page.dart';

class AppRoutes {
  static String otpPage = "/otp";
  static String verifyPhoneNumber = "/verify";

  static String getVerifyPhoneNumberPage() => "$verifyPhoneNumber";
  static String getOtp() => "$otpPage";

  //List for routes
  static List<GetPage> routes = [
    GetPage(name: verifyPhoneNumber, page: () => VerifyPhoneNumberPage(),transition:Transition.fadeIn) ,
    GetPage(name: otpPage, page: () => GetOtpPage(),transition:Transition.fadeIn) ,
  ];
}
