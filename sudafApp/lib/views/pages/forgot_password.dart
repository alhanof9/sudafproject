import 'package:flutter/material.dart';
import 'package:testapp/views/pages/login_view.dart'; // تأكد من أن مسار ملف Login صحيح


class ForgotFlow extends StatelessWidget {
  const ForgotFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo'),
      home: const EmailInputScreen(),
    );
  }
}

// ------------------------------------------------------------
// 🎨 الألوان
// ------------------------------------------------------------
class AppColors {
  static const background = Color(0xFFFEFDF3);
  static const whiteBox = Color(0xFFFFFFFF);
  static const yellow = Color(0xFFFFF3C2);
  static const borderYellow = Color(0xFFFEDF89);
  static const textGrey = Color(0xFF667085);
  static const errorRed = Color(0xFFE53935);
}

// ------------------------------------------------------------
// 📌 Widget: المربع الأبيض السفلي
// ------------------------------------------------------------
class BottomWhiteBox extends StatelessWidget {
  final Widget child;
  const BottomWhiteBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.48;
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: AppColors.whiteBox,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 12,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}

// ------------------------------------------------------------
// 1️⃣ شاشة إدخال الإيميل
// ------------------------------------------------------------
class EmailInputScreen extends StatefulWidget {
  const EmailInputScreen({super.key});

  @override
  State<EmailInputScreen> createState() => _EmailInputScreenState();
}

class _EmailInputScreenState extends State<EmailInputScreen> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const CodeInputScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // 1. زر الرجوع (تم عكس الاتجاه + إصلاح المنطقة القابلة للمس)
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {
                // ملاحظة: هذا يعمل فقط إذا جئت من صفحة سابقة (Login)
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  // حل احتياطي: إذا لم يكن هناك صفحة سابقة، يفتح صفحة الدخول
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                }
              },
              child: Container(
                padding: const EdgeInsets.all(10), // تكبير المنطقة للمس
                color: Colors.transparent, // ضروري عشان يحس باللمس في المساحة الفاضية
                child: const Icon(
                  Icons.arrow_back_ios_new, //  السهم
                  size: 22,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          _buildTopTitle(),
          
          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                     const SizedBox(height: 25),
                    const Text(
                      "أدخل بريدك الإلكتروني لإرسال رمز التحقق لتعيين كلمة المرور",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 16, color: AppColors.textGrey),
                    ),
                    const SizedBox(height: 2),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text("البريد الإلكتروني", style: TextStyle(fontSize: 14)),
                    ),
                    const SizedBox(height: 8),// la
                    
                    TextFormField(
                      controller: _emailController,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: AppColors.borderYellow),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: AppColors.borderYellow, width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: AppColors.errorRed),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: AppColors.errorRed, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "الرجاء إدخال البريد الإلكتروني";
                        }
                        final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                        if (!emailRegex.hasMatch(value)) {
                          return "صيغة البريد غير صحيحة";
                        }
                        return null;
                      },
                    ),

                    const Spacer(),
                    SizedBox(
                      width: 250,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.yellow,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        ),
                        onPressed: validateAndSubmit,
                        child: const Text("إرسال الرمز", style: TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildShieldIcon(),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// 2️⃣ شاشة إدخال رمز التحقق
// ------------------------------------------------------------
class CodeInputScreen extends StatefulWidget {
  const CodeInputScreen({super.key});

  @override
  State<CodeInputScreen> createState() => _CodeInputScreenState();
}

class _CodeInputScreenState extends State<CodeInputScreen> {
  final List<TextEditingController> controllers = List.generate(4, (_) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());
  bool showError = false;
  // final String correctCode = "1234"; // 🔒 تم التعليق

  void validateCode() {
    // String enteredCode = controllers.map((e) => e.text).join();
    
    // ✅ تم تعليق التحقق من الرمز الصحيح (يقبل أي شيء الآن)
    /*
    if (enteredCode == correctCode) {
      setState(() => showError = false);
      Navigator.push(context, MaterialPageRoute(builder: (_) => const NewPasswordScreen()));
    } else {
      setState(() {
        showError = true;
        for (var controller in controllers) controller.clear();
      });
      FocusScope.of(context).requestFocus(focusNodes[0]);
    }
    */

    // الانتقال المباشر بدون شرط
    Navigator.push(context, MaterialPageRoute(builder: (_) => const NewPasswordScreen()));
  }

  void handleInput(int index, String value) {
    if (value.isNotEmpty && index < 3) {
      FocusScope.of(context).requestFocus(focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(focusNodes[index - 1]);
    }
    if (showError) setState(() => showError = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
           // زر الرجوع في صفحة الكود أيضاً
           Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.transparent,
                child: const Icon(Icons.arrow_back_ios_new, size: 22, color: Colors.black), // 👈 تم عكس السهم
              ),
            ),
          ),
          _buildTopTitle(),
          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Column(
                children: [
                  const Text(
                    "أدخل الرمز المرسل على البريد الإلكتروني",
                    style: TextStyle(fontSize: 18, color: AppColors.textGrey),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) {
                      return Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: showError ? AppColors.errorRed : AppColors.borderYellow,
                            width: showError ? 2 : 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          controller: controllers[index],
                          focusNode: focusNodes[index],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          onChanged: (v) => handleInput(index, v),
                          decoration: const InputDecoration(counterText: "", border: InputBorder.none),
                        ),
                      );
                    }),
                  ),
                  if (showError)
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "الرمز المدخل غير صحيح",
                        style: TextStyle(color: AppColors.errorRed, fontSize: 13),
                      ),
                    ),
                  const Spacer(),
                  SizedBox(
                    width: 250,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.yellow,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                      ),
                      onPressed: validateCode,
                      child: const Text("تأكيد الرمز", style: TextStyle(color: Colors.black, fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildShieldIcon(),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// 3️⃣ شاشة كلمة المرور الجديدة
// ------------------------------------------------------------
class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // زر رجوع اختياري
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.transparent,
                child: const Icon(Icons.arrow_back_ios_new, size: 22, color: Colors.black),
              ),
            ),
          ),
          _buildTopTitle(),
          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text("أدخل كلمة المرور الجديدة", style: TextStyle(fontSize: 18, color: AppColors.textGrey)),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text("كلمة المرور الجديدة", style: TextStyle(fontSize: 16)),
                    ),
                    const SizedBox(height: 8),

                    TextFormField(
                      controller: _passController,
                      obscureText: true,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: AppColors.borderYellow),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: AppColors.borderYellow, width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: AppColors.errorRed),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: AppColors.errorRed, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "الرجاء إدخال كلمة المرور";
                        }
                        if (value.length < 8) {
                          return "يجب أن تكون 8 أحرف على الأقل";
                        }
                        if (!value.contains(RegExp(r'[0-9]'))) {
                          return "يجب أن تحتوي على رقم واحد على الأقل";
                        }
                        return null;
                      },
                    ),
                    
                    const Spacer(),
                    Center(
                      child: SizedBox(
                        width: 250,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.yellow,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                          ),
                          onPressed: validateAndSubmit,
                          child: const Text("تأكيد", style: TextStyle(color: Colors.black, fontSize: 18)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildShieldIcon(),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// مساعدات التصميم
// ------------------------------------------------------------
Widget _buildTopTitle() {
  return Positioned(
    top: 150,
    left: 0,
    right: 0,
    child: Center(
      child: Text(
        'نسيت كلمة المرور',
        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600, height: 9.0),
      ),
    ),
  );
}

Widget _buildShieldIcon() {
  return Align(
    alignment: const Alignment(0, 0.001),
    child: Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        color: const Color(0xFFFEEFC7),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 6, offset: const Offset(0, 2))],
      ),
      child: const Icon(Icons.shield_outlined, size: 60, color: Color(0xFF616161)),
    ),
  );
}