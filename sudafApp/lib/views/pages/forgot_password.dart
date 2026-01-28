import 'package:flutter/material.dart';

void main() {
  runApp(const ForgotFlow());
}

class ForgotFlow extends StatelessWidget {
  const ForgotFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    final height = MediaQuery.of(context).size.height * 0.45;
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
// 1️⃣ شاشة إدخال الإيميل (مع التحقق)
// ------------------------------------------------------------
class EmailInputScreen extends StatefulWidget {
  const EmailInputScreen({super.key});

  @override
  State<EmailInputScreen> createState() => _EmailInputScreenState();
}

class _EmailInputScreenState extends State<EmailInputScreen> {
  final TextEditingController _emailController = TextEditingController();
  bool showError = false;

  // محاكاة لقاعدة البيانات
  final String mockDatabaseEmail = "test@example.com";

  void validateEmail() {
    setState(() {
      if (_emailController.text == mockDatabaseEmail) {
        showError = false;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const CodeInputScreen()),
        );
      } else {
        showError = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'نسيت كلمة المرور',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  height: 9.0,
                ),
              ),
            ),
          ),
          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
              child: Column(
                children: [
                  const Text(
                    "أدخل بريدك الإلكتروني لإرسال رمز التحقق لتعيين كلمة المرور",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: AppColors.textGrey),
                  ),
                  const SizedBox(height: 25),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text("البريد الإلكتروني", style: TextStyle(fontSize: 14)),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: showError ? AppColors.errorRed : AppColors.borderYellow,
                        width: showError ? 2 : 1,
                      ),
                    ),
                    child: TextField(
                      controller: _emailController,
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  if (showError)
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "البريد المدخل غير صحيح أو غير مسجل يرجى المحاولة مرة أخرى",
                        style: TextStyle(color: AppColors.errorRed, fontSize: 12),
                        textAlign: TextAlign.right,
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
                      onPressed: validateEmail,
                      child: const Text("إرسال الرمز", style: TextStyle(color: Colors.black, fontSize: 16)),
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
// 2️⃣ شاشة إدخال رمز التحقق (مع التحقق)
// ------------------------------------------------------------
// ------------------------------------------------------------
// 2️⃣ شاشة إدخال رمز التحقق (المحدثة)
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

  final String correctCode = "1234"; 

  void validateCode() {
    String enteredCode = controllers.map((e) => e.text).join();
    
    if (enteredCode == correctCode) {
      setState(() => showError = false);
      Navigator.push(context, MaterialPageRoute(builder: (_) => const NewPasswordScreen()));
    } else {
      // 🛑 إذا كانت الإجابة خاطئة:
      setState(() {
        showError = true;
        // 1. مسح النصوص من جميع المربعات
        for (var controller in controllers) {
          controller.clear();
        }
      });
      // 2. إعادة التركيز للمربع الأول تلقائياً
      FocusScope.of(context).requestFocus(focusNodes[0]);
    }
  }

  void handleInput(int index, String value) {
    // الانتقال للمربع التالي عند الكتابة
    if (value.isNotEmpty && index < 3) {
      FocusScope.of(context).requestFocus(focusNodes[index + 1]);
    } 
    // العودة للمربع السابق عند الحذف
    else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(focusNodes[index - 1]);
    }

    // إخفاء رسالة الخطأ بمجرد أن يبدأ المستخدم بالكتابة مرة أخرى
    if (showError) {
      setState(() => showError = false);
    }
  }

  @override
  void dispose() {
    for (var c in controllers) {
      c.dispose();
    }
    for (var f in focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          _buildTopTitle(),
          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
              child: Column(
                children: [
                  const Text(
                    "أدخل الرمز المرسل على البريد الإلكتروني", 
                    style: TextStyle(fontSize: 18, color: AppColors.textGrey)
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) {
                      return Container(
                        width: 60, height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: showError ? AppColors.errorRed : AppColors.borderYellow, 
                            width: showError ? 2 : 1
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
                        "الرمز المدخل غير صحيح، تم مسح الإدخال لإعادة المحاولة", 
                        style: TextStyle(color: AppColors.errorRed, fontSize: 13)
                      ),
                    ),
                  const Spacer(),
                  SizedBox(
                    width: 250, height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.yellow, 
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
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
// 3️⃣ شاشة كلمة المرور الجديدة (مع التحقق من المعايير)
// ------------------------------------------------------------
class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final TextEditingController _passController = TextEditingController();
  bool showError = false;

  void validatePassword() {
    String pass = _passController.text;
    bool hasDigits = pass.contains(RegExp(r'[0-9]'));
    bool isLongEnough = pass.length >= 8;

    if (hasDigits && isLongEnough) {
      setState(() => showError = false);
      // تم بنجاح
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("تم تغيير كلمة المرور بنجاح")));
    } else {
      setState(() => showError = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          _buildTopTitle(),
          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(alignment: Alignment.centerRight, child: Text("أدخل كلمة المرور الجديدة", style: TextStyle(fontSize: 18, color: AppColors.textGrey))),
                  const SizedBox(height: 20),
                  const Align(alignment: Alignment.centerRight, child: Text("كلمة المرور الجديدة", style: TextStyle(fontSize: 16))),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: showError ? AppColors.errorRed : AppColors.borderYellow, width: showError ? 2 : 1),
                    ),
                    child: TextField(
                      controller: _passController,
                      obscureText: true,
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16), border: InputBorder.none),
                    ),
                  ),
                  if (showError)
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "يجب أن تحتوي كلمة المرور على 8 أحرف على الأقل، وتتضمن رقماً واحداً على الأقل.",
                        style: TextStyle(color: AppColors.errorRed, fontSize: 13),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  const Spacer(),
                  Center(
                    child: SizedBox(
                      width: 250, height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: AppColors.yellow, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
                        onPressed: validatePassword,
                        child: const Text("تأكيد", style: TextStyle(color: Colors.black, fontSize: 18)),
                      ),
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
// مساعدات التصميم (UI Helpers)
// ------------------------------------------------------------
Widget _buildTopTitle() {
  return Positioned(
    top: 150, left: 0, right: 0,
    child: Center(
      child: Text('نسيت كلمة المرور', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600, height: 9.0)),
    ),
  );
}

Widget _buildShieldIcon() {
  return Align(
    alignment: const Alignment(0, 0.12),
    child: Container(
      width: 110, height: 110,
      decoration: BoxDecoration(
        color: const Color(0xFFFEEFC7),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 6, offset: const Offset(0, 2))],
      ),
      child: const Icon(Icons.shield_outlined, size: 60, color: Color(0xFF616161)),
    ),
  );
}