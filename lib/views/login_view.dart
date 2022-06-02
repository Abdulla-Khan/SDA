import 'package:flutter/material.dart';
import 'package:social/views/constants/color_constants.dart';
import 'package:social/views/home_view.dart';
import 'package:social/views/widgets/clippers/signup_clipper.dart';

import 'widgets/sign_in_widgets/sign_up_feild.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: SignUpClipper(),
              child: Image(
                height: s.height / 2,
                width: double.infinity,
                image: const AssetImage('assets/sign.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: s.width * 0.05,
                  top: s.height * 0.02,
                  right: s.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Let\'s sign you in',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: s.height * 0.01),
                  const Text(
                    'Welcome Back. You\'ve been missed!',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: s.height * 0.01),
                  const SignUp_Feild(),
                  SizedBox(height: s.height * 0.02),
                  const SignUp_Feild(),
                  SizedBox(height: s.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [Text('Forgot Password?')],
                  ),
                  SizedBox(height: s.height * 0.03),
                  InkWell(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const HomeView())),
                    child: Container(
                      height: s.height * 0.065,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: yellow,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: .5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: s.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account yet?',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
