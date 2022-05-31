// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:social/views/login_view.dart';
import 'package:social/views/widgets/signup_clipper.dart';

import 'widgets/line_clipper.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF1E1D24),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  ClipPath(
                    // clipBehavior: Clip.antiAlias,
                    clipper: SignUpClipper(),
                    child: Image(
                      height: s.height * 0.7,
                      width: double.infinity,
                      image: AssetImage('assets/1.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  RotationTransition(
                    alignment: Alignment.topCenter,
                    turns: AlwaysStoppedAnimation(180 / 360),
                    child: CustomPaint(
                      painter: CurvePainter(),
                      child: Container(
                        height: s.height / 20,
                        child: Stack(children: [
                          Positioned(
                            top: 19,
                            left: 20,
                            child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: 9,
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 60,
                            child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: 8,
                            ),
                          ),
                          Positioned(
                            top: 9.3,
                            left: 100,
                            child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: 6,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top Local",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Models in one place",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      "Get inspired by the best portfolios from all \nover the world",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              bottom: s.height * 0.1,
              right: s.width * 0.01,
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.yellow, shape: BoxShape.circle),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => LoginView()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black,
                        size: 20,
                      ))))
        ],
      ),
    );
  }
}
