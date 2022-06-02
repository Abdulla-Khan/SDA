import 'package:flutter/material.dart';
import 'package:social/views/constants/color_constants.dart';

class SignUp_Feild extends StatelessWidget {
  const SignUp_Feild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: yellow, width: 1.50),
        ),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.white, width: 1.50),
        ),
      ),
      cursorColor: Colors.white,
    );
  }
}
