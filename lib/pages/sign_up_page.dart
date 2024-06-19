import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_calme/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.all(defaultMargin),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 48),
                      child: Center(
                        child: Image.asset(
                          'assets/logo.png',
                          width: 184,
                          height: 48,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 48),
                      child: Text(
                        'Register dan Seru-seruan!',
                        style: blackTextStyle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      child: Text(

                        'Register dan nikmati serunya bareng Calme!',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff3E5481),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Nama lengkap kamu*',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3E5481),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 343,
                            margin: const EdgeInsets.only(bottom: 16),
                            child: Container(
                              color: const Color(0xffFFFFFF),
                              child: textFormField(),
                            ),
                          ),
                          const Text(
                            'Email kamu*',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3E5481),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 343,
                            margin: const EdgeInsets.only(bottom: 16),
                            child: Container(
                              color: const Color(0xffFFFFFF),
                              child: TextField(
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff3E5481),
                                ),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  hintText: 'Masukkan email',
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Color(0xff3E5481),
                                  ),
                                  hintStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff3E5481),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                      color: Color(0xff3E5481),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0xff3E5481),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'Password kamu*',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3E5481),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 343,
                            margin: const EdgeInsets.only(bottom: 16),
                            child: Container(
                              color: const Color(0xffFFFFFF),
                              child: TextField(
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff3E5481),
                                ),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  hintText: 'Masukkan password',
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Color(0xff3E5481),
                                  ),
                                  hintStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff3E5481),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: const BorderSide(
                                      color: Color(0xff3E5481),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0xff3E5481),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        //primary: Color(0xff3E5481),
                        minimumSize: const Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign-in');
                      },
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Sudah punya akun? ',
                            style: GoogleFonts.poppins(
                              color: const Color(0xff3E5481),
                              fontWeight: FontWeight.w300,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Login',
                                style: GoogleFonts.poppins(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextField textFormField() {
    return TextField(
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff3E5481),
                              ),
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                hintText: 'Masukkan nama',
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Color(0xff3E5481),
                                ),
                                hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff3E5481),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(
                                    color: Color(0xff3E5481),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Color(0xff3E5481),
                                  ),
                                ),
                              ),
                            );
  }
}
