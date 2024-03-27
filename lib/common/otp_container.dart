import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../controllers/verify_phone_controller.dart';

class OtpContainer extends StatelessWidget {
  String? initialValue;
  int? index;
  var onChange;

  OtpContainer({Key? key, this.initialValue,this.index,this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyPhoneController verifyPhoneController = VerifyPhoneController();
    return Container(
      width: 50,
      height: 100,
      margin: EdgeInsets.all(5),
      child: TextFormField(
        keyboardType: TextInputType.number,
        // controller: verifyPhoneController.otp,
        initialValue: initialValue.toString(),
        onChanged: (value) => onChange(value),
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
    );
  }
}
