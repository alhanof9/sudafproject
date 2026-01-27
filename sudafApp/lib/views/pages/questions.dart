import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  // استقبال نص السؤال ونص الإجابة كمتغيرات ديناميكية
  final String question;
  final String answer;

  const Questions({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    // الحصول على عرض الشاشة لضمان التجاوب
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: 852, // يمكنك استبداله بـ MediaQuery لجعل الارتفاع ديناميكي أيضاً
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(54),
                ),
              ),
              child: Stack(
                children: [
                  /// 1. الخلفية العلوية (تبدأ من الحافة)
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 252, 245),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 7,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),

                  /// 2. عنوان الصفحة
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 60,
                    child: const Text(
                      'الأسئلة العملية',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  /// 3. صندوق السؤال (يستخدم widget.question)
                  Positioned(
                    left: 45,
                    right: 45,
                    top: 135,
                    child: Container(
                      height: 170,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFFFDF5),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFFEDF89)),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        shadows: const [
                          BoxShadow(color: Color(0x3F000000), blurRadius: 7, offset: Offset(0, 1))
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            widget.question, // استقبال السؤال الممرر
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// 4. صندوق الإجابة (يستخدم widget.answer)
                  Positioned(
                    left: 45,
                    right: 45,
                    top: 342,
                    child: Container(
                      height: 282,
                      padding: const EdgeInsets.all(25),
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 255, 253, 245),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFFEDF89)),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        shadows: const [
                          BoxShadow(color: Color(0x3F000000), blurRadius: 7, offset: Offset(0, 1))
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Text(
                          widget.answer, // استقبال الإجابة الممررة
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// 5. زر الرجوع (وضعناه في آخر الـ Stack لضمان استجابة اللمس)
                  Positioned(
                    top: 55, 
                    left: 10, 
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: Colors.transparent, 
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Color.fromARGB(255, 96, 96, 96),
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}