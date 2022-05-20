import 'package:flutter/material.dart';

class SignUp_Feild extends StatelessWidget {
  const SignUp_Feild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
          // color:
          ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.yellow, width: 1.50),
        ),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 1.50),
        ),
      ),
      cursorColor: Colors.white,
    );
  }
}
