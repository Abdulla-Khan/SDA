import 'package:flutter/material.dart';
import 'package:social/views/constants/color_constants.dart';
import 'package:social/views/login_view.dart';
import 'package:social/views/widgets/clippers/line_clipper.dart';

import 'widgets/clippers/signup_clipper.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  ClipPath(
                    clipper: SignUpClipper(),
                    child: Image(
                      height: s.height * 0.7,
                      width: double.infinity,
                      image: const AssetImage('assets/1.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  RotationTransition(
                    alignment: Alignment.topCenter,
                    turns: const AlwaysStoppedAnimation(180 / 360),
                    child: CustomPaint(
                      painter: CurvePainter(),
                      child: SizedBox(
                        height: s.height / 20,
                        child: Stack(children: [
                          Positioned(
                            top: 19,
                            left: 20,
                            child: CircleAvatar(
                              backgroundColor: yellow,
                              radius: 9,
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 60,
                            child: CircleAvatar(
                              backgroundColor: yellow,
                              radius: 8,
                            ),
                          ),
                          Positioned(
                            top: 9.3,
                            left: 100,
                            child: CircleAvatar(
                              backgroundColor: yellow,
                              radius: 6,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
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
                  decoration:
                      BoxDecoration(color: yellow, shape: BoxShape.circle),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginView()));
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black,
                        size: 20,
                      ))))
        ],
      ),
    );
  }
}
