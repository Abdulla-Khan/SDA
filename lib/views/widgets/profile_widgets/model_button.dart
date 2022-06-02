import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class ModelButton extends StatelessWidget {
  const ModelButton(
      {Key? key, required this.s, required this.btn1, required this.btn2})
      : super(key: key);

  final Size s;
  final String btn1, btn2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: s.height * 0.06,
          width: s.width * 0.37,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 1, color: Colors.white)),
          child: const Center(
            child: Text('Hire Model',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontWeight: FontWeight.w500)),
          ),
        ),
        SizedBox(width: s.width * 0.05),
        Container(
          height: s.height * 0.06,
          width: s.width * 0.37,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            color: yellow,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Center(
            child: Text(
              'Message',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: .3,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
