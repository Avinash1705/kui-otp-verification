import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../controllers/verify_phone_controller.dart';

class OtpContainer extends StatelessWidget {
  var onChange;
  var controller;

  OtpContainer(
      {Key? key,
      this.onChange,required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      margin: EdgeInsets.all(5),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        onChanged: (value) => onChange(value),
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
    );
  }
}
