import 'package:flutter/material.dart';
import 'package:slicing_calme/pages/artikel_page.dart';
import 'package:slicing_calme/pages/jurnal_page.dart';
import 'package:slicing_calme/pages/meditasi_page.dart';
import 'package:slicing_calme/pages/profil_page.dart';
import 'package:slicing_calme/pages/sign_in_page.dart';
import 'package:slicing_calme/pages/splash_page.dart';
import 'package:slicing_calme/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                minimumSize: const Size(double.infinity, 48)),
          )),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/home': (context) => const HomePage(),
        '/meditasi': (context) => const MeditasiPage(),
        '/artikel': (context) => const ArtikelPage(),
        '/jurnal': (context) => const JurnalPage(),
        '/profil': (context) => const ProfilPage(),
      },
    );
  }
}
