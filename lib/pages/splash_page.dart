import 'dart:async';
import 'package:slicing_calme/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const SignUpPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        body: Center(
          child: Container(
            width: 184,
            height: 48,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ));
  }
}
