import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 393,
                height: 852,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(54),
                  ),
                ),
                child: Stack(
                  children: [
                    // الخلفية العلوية
                    Container(
                      width: double.infinity,
                      height: 150,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 252, 245),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 7,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // زر الباك
                    Positioned(
                      top: 16,
                      left: 16, // ممكن تغيّرينه ليمين إذا RTL
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context); // ترجع للشاشة السابقة
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(0, 255, 172, 64),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 96, 96, 96),
                            size: 24,
                          ),
                        ),
                      ),
                    ),

                    // صندوق السؤال
                    Positioned(
                      left: 46,
                      top: 123,
                      child: Container(
                        width: 303,
                        height: 170,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFFDF5),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: Color(0xFFFEDF89),
                            ),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 7,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),

                    // صندوق الاجابة
                    Positioned(
                      left: 45,
                      top: 342,
                      child: Container(
                        width: 303,
                        height: 282,
                        decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 255, 253, 245),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: Color(0xFFFEDF89),
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 7,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                      ),
                    ),

                    // عنوان الصفحة
                    Positioned(
                      left: 108,
                      top: 64,
                      child: SizedBox(
                        width: 183,
                        height: 39,
                        child: Text(
                          'الاسئلة العملية',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Strait',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),

                    // نص السؤال
                    Positioned(
                      left: 73,
                      top: 189,
                      child: SizedBox(
                        width: 248,
                        child: Text(
                          'كيف تتعامل مع خطأ أو مشكلة في الكود الخاص بك؟',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 16,
                            fontFamily: 'Ribeye',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),

                    // نص الاجابة
                    Positioned(
                      left: 73,
                      top: 370,
                      child: SizedBox(
                        width: 247,
                        height: 211,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'أول شيء أقوم به هو إعادة فحص الكود لتحديد مكان الخطأ، وأختبر الأجزاء التي قد تكون سبب المشكلة باستخدام أدوات تصحيح الأخطاء (',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 16,
                                  fontFamily: 'Reggae One',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'debugger',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 16,
                                  fontFamily: 'Reem Kufi Ink',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '). إذا لم أتمكن من حل المشكلة بمفردي، أبحث عن حلول على الإنترنت أو أستشير زميلاً لديه خبرة، ثم أطبق الحل وأتأكد من اختباره للتأكد أن المشكلة تم حلها بالكامل.',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 16,
                                  fontFamily: 'Reggae One',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
