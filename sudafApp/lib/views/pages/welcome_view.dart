import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'login_view.dart';
import 'register_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double cardHeight = 430; 

    return Scaffold(
      backgroundColor: const Color(0xFFFFFBEF),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.23,
              left: 0, right: 0,
              child: Text(
                'من بين الظلال، يسطع السُدف',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19, 
                  color: const Color.fromARGB(255, 97, 97, 97),
                  shadows: [Shadow(color: Colors.black.withOpacity(0.3), offset: const Offset(2, 2), blurRadius: 8)],
                ),
              ),
            ),
            Positioned(
              bottom: cardHeight - 118, 
              left: 0, right: 0,
              child: Image.asset('images/sudaf_logo.png', height: 270, width: 370, fit: BoxFit.contain),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: cardHeight,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70)),
                  boxShadow: [BoxShadow(color: Color.fromARGB(31, 49, 49, 49), blurRadius: 20, spreadRadius: 5)],
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    const Text('سُـدف | SUDAF', style: TextStyle(color: Colors.black26, fontSize: 22)),
                    const SizedBox(height: 55),
                    btn("تسجيل الدخول", () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()))),
                    const SizedBox(height: 15),
                    const Text("أو", style: TextStyle(color: Colors.black26, fontSize: 13)),
                    const SizedBox(height: 10),
                    btn("انشاء حساب", () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccountScreen()))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}