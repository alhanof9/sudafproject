import 'package:flutter/material.dart';
import 'package:testapp/views/pages/forgot_password.dart';
import 'package:testapp/views/pages/welcome_view.dart';

import 'package:testapp/views/widgets_tree.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // 1. تعريف مفتاح النموذج (Form Key) للتحقق من المدخلات
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    // ارتفاع الحاوية البيضاء
    final double cardHeight = 520; 

    return Scaffold(
      backgroundColor: const Color(0xFFFFFBEF),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            // --- زر الرجوع ---
            Positioned(
              top: 50,
              left: 10,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios, size: 20),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          WelcomeScreen()));},//
              ),
            ),

            // --- العنوان العلوي ---
            const Positioned(
              top: 55,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'تسجيل الدخول',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // --- صورة الشعار المربوطة بالبوكس ---
            Positioned(
            left: 57,
            top: 201,
            child: Container(
              width: 273,
              height: 208,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),



            // --- حاوية البيانات البيضاء ---
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: cardHeight,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(31, 49, 49, 49),
                      blurRadius: 20,
                      spreadRadius: 5,
                    )
                  ],
                ),
                child: Form(
                  // 2. ربط النموذج بالمفتاح
                  key: _loginFormKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      const Text(
                        "رجاءً ادخل المعلومات التالية.",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      const SizedBox(height: 10),
                      
                      // 3. إضافة الـ validator لكل حقل
                      input(
                        "البريد الالكتروني",
                        validator: (value) {
                          if (value == null || value.isEmpty) return "الرجاء إدخال البريد الالكتروني";
                          if (!value.contains('@')) return "صيغة البريد غير صحيحة";
                          return null;
                        },
                      ),

                      input(
                        "كلمة المرور",
                        isPass: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) return "الرجاء إدخال كلمة المرور";
                          if (value.length < 8) return "كلمة المرور يجب أن لا تقل عن 8 خانات";
                          return null;
                        },
                      ),

                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          ForgotFlow()));  
                          },
                          child: const Text(
                            "هل نسيت كلمة المرور؟",
                            style: TextStyle(color: Color(0xFF6B7280), fontSize: 12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // 4. استدعاء التحقق عند الضغط على الزر
                      btn("تسجيل الدخول", () {
                        if (_loginFormKey.currentState!.validate()) {
                          // إذا نجح التحقق، ننتقل للخطوة التالية
                         Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          WidgetsTree()));
                          // Navigator.push(...);
                        }
                      }, width: 220),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}