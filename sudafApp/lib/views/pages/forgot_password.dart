import 'package:flutter/material.dart';

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
// 🎨 ألوان ثابتة
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
// 📌 Widget: المربع الأبيض السفلي (30% من الشاشة)
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
// 1️⃣ شاشة إدخال الإيميل
// ------------------------------------------------------------
class EmailInputScreen extends StatelessWidget {
  const EmailInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // النص العلوي خلف كل شيء
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'نسيت كلمة المرور',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Color.fromARGB(255, 24, 23, 23),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 9.0,

                ),
              ),
            ),
          ),

          // الصندوق الأبيض
          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "أدخل بريدك الإلكتروني لإرسال رمز التحقق لتعيين كلمة المرور",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textGrey,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "البريد الإلكتروني",
                      style: TextStyle(fontSize: 14, fontFamily: "Roboto"),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: AppColors.borderYellow),
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CodeInputScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "إرسال الرمز للبريد الألكتروني",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Roboto",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          IgnorePointer(
            child: Align(
              alignment: const Alignment(0, -0.01),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: const Color(0xFFFEEFC7),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.shield_outlined,
                  size: 60,
                  color: Color(0xFF616161),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// ------------------------------------------------------------
// 2️⃣ شاشة خطأ الإيميل
// ------------------------------------------------------------
class EmailErrorScreen extends StatelessWidget {
  const EmailErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
     body: Stack(
  children: [
         Positioned(
      top: 80,
      left: 0,
      right: 0,
      child: Center(
        child: Text(
          'نسيت كلمة المرور',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Color.fromARGB(255, 24, 23, 23),
            fontSize: 25,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 9.0,
          ),
        ),
      ),
    ),
    // المربع الأبيض 
    BottomWhiteBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "أدخل بريدك الإلكتروني لإرسال رمز التحقق لتعيين كلمة المرور",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textGrey,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            const SizedBox(height: 25),
              const Align(
                  alignment: Alignment.centerRight, 
                  child: Text(
                    "البريد الإلكتروني",
                    style: TextStyle(fontSize: 14, fontFamily: "Roboto"),
                  ),
                ),            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: AppColors.errorRed, width: 2),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "البريد المدخل غير صحيح أو غير مسجل يرجى المحاولة مرة أخرى",
              style: TextStyle(color: AppColors.errorRed),
            ),
            const Spacer(),
            Center(
              child: SizedBox(
                width: 250,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    " إرسال الرمز للبريد الإكتروني",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),

    // الأيقونة في نهاية الستاك
          Align(
  alignment: Alignment(0, -0.01), // يتحكم بمكانها عموديًا
  child: Container(
    width: 110,
    height: 110,
    decoration: BoxDecoration(
      color: Color(0xFFFEEFC7),
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 6,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: const Icon(
      Icons.shield_outlined,
      size: 60,
      color: Color(0xFF616161),
    ),
  ),
),
  ],
),

    );
  }
}

// ------------------------------------------------------------
// 3️⃣ شاشة إدخال رمز التحقق
// ------------------------------------------------------------
class CodeInputScreen extends StatefulWidget {
  const CodeInputScreen({super.key});

  @override
  State<CodeInputScreen> createState() => _CodeInputScreenState();
}

class _CodeInputScreenState extends State<CodeInputScreen> {
  final List<TextEditingController> controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

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

  void handleInput(int index, String value) {
    if (value.isNotEmpty) {
      // إذا كتب رقم → نروح للمربع اللي بعده
      if (index < 3) {
        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
      } else {
        FocusScope.of(context).unfocus(); // آخر مربع
      }
    } else {
      // إذا مسح → نرجع للمربع اللي قبله
      if (index > 0) {
        FocusScope.of(context).requestFocus(focusNodes[index - 1]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
              Positioned(
      top: 80,
      left: 0,
      right: 0,
      child: Center(
        child: Text(
          'نسيت كلمة المرور',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Color.fromARGB(255, 24, 23, 23),
            fontSize: 25,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 9.0,
          ),
        ),
      ),
    ),
          // المربع الأبيض
          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 95),
              child: Column(
                children: [
                  Text(
                    "أدخل الرمز المرسل على البريد الإلكتروني",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.textGrey,
                      fontFamily: "Roboto",
                    ),
                  ),

                  const SizedBox(height: 25),

                  // مربعات الإدخال
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) {
                      return Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: AppColors.borderYellow),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          controller: controllers[index],
                          focusNode: focusNodes[index],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          style: const TextStyle(fontSize: 22),
                          decoration: const InputDecoration(
                            counterText: "",
                            border: InputBorder.none,
                          ),
                          onChanged: (value) => handleInput(index, value),
                        ),
                      );
                    }),
                  ),

                  const Spacer(),

                  // زر التأكيد
                  SizedBox(
                    width: 250,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const NewPasswordScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "إرسال الرمز للبريد الإلكتروني",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
           Align(
  alignment: Alignment(0, -0.01), // يتحكم بمكانها عموديًا
  child: Container(
    width: 110,
    height: 110,
    decoration: BoxDecoration(
      color: Color(0xFFFEEFC7),
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 6,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: const Icon(
      Icons.shield_outlined,
      size: 60,
      color: Color(0xFF616161),
    ),
  ),
),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// 4️⃣ شاشة خطأ رمز التحقق
// ------------------------------------------------------------
class CodeErrorScreen extends StatelessWidget {
  const CodeErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
               Positioned(
      top: 80,
      left: 0,
      right: 0,
      child: Center(
        child: Text(
          'نسيت كلمة المرور',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Color.fromARGB(255, 24, 23, 23),
            fontSize: 25,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 9.0,
          ),
        ),
      ),
    ),
   

          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 95),
              child: Column(
                children: [
                  Text(
                    "أدخل الرمز المرسل على البريد الإلكتروني.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.textGrey,
                      fontFamily: "Roboto",
                    ),
                  ),

                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                      (_) => Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.errorRed,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22),
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "الرمز المدخل غير صحيح , يرجى التحقق وإعادة المحاولة",
                    style: TextStyle(color: AppColors.errorRed),
                  ),

                  const Spacer(),

                  SizedBox(
                    width: 250,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "إرسال الرمز للبريد الإلكتروني",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
                 Align(
  alignment: Alignment(0, -0.01), // يتحكم بمكانها عموديًا
  child: Container(
    width: 110,
    height: 110,
    decoration: BoxDecoration(
      color: Color(0xFFFEEFC7),
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 6,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: const Icon(
      Icons.shield_outlined,
      size: 60,
      color: Color(0xFF616161),
    ),
  ),
),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// 5️⃣ شاشة تعيين كلمة مرور جديدة
// ------------------------------------------------------------
class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [

                    Positioned(
      top: 80,
      left: 0,
      right: 0,
      child: Center(
        child: Text(
          'نسيت كلمة المرور',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Color.fromARGB(255, 24, 23, 23),
            fontSize: 25,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 9.0,
          ),
        ),
      ),
    ),
      

          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 95),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Align(
                alignment: Alignment.centerRight,
                child: Text(
                      "أدخل كلمة المرور الجديدة",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.textGrey,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Align(
                  alignment: Alignment.centerRight, // محاذاة لليمين
                  child:  Text("كلمة المرور", style: TextStyle(fontSize: 16)),
                ),
                 const SizedBox(height: 8),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.borderYellow),
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),


                 

                  const Spacer(),

                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "تأكيد",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
                 Align(
  alignment: Alignment(0, -0.01), // يتحكم بمكانها عموديًا
  child: Container(
    width: 110,
    height: 110,
    decoration: BoxDecoration(
      color: Color(0xFFFEEFC7),
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 6,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: const Icon(
      Icons.shield_outlined,
      size: 60,
      color: Color(0xFF616161),
    ),
  ),
),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// 6️⃣ شاشة خطأ كلمة المرور
// ------------------------------------------------------------
class NewPasswordErrorScreen extends StatelessWidget {
  const NewPasswordErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [

      Positioned(
      top: 80,
      left: 0,
      right: 0,
      child: Center(
        child: Text(
          'نسيت كلمة المرور',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Color.fromARGB(255, 24, 23, 23),
            fontSize: 25,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 9.0,
          ),
        ),
      ),
    ),
    

          BottomWhiteBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                       const Align(
                alignment: Alignment.centerRight,
                child: Text(
                      "أدخل كلمة المرور الجديدة",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.textGrey,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),
                  const Align(
                  alignment: Alignment.centerRight, // محاذاة لليمين
                  child:  Text("كلمة المرور", style: TextStyle(fontSize: 16)),
                ),
                 const SizedBox(height: 8),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: AppColors.errorRed, width: 2),
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "يجب أن تحتوي كلمة المرور على ٨ أحرف على الأقل, وتتضمن رقما واحدا على الأقل.",
                    style: TextStyle(color: AppColors.errorRed),
                  ),

                  const Spacer(),

                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "تأكيد",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
                 Align(
  alignment: Alignment(0, -0.01), // يتحكم بمكانها عموديًا
  child: Container(
    width: 110,
    height: 110,
    decoration: BoxDecoration(
      color: Color(0xFFFEEFC7),
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 6,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: const Icon(
      Icons.shield_outlined,
      size: 60,
      color: Color(0xFF616161),
    ),
  ),
),
        ],
      ),
    );
  }
}
