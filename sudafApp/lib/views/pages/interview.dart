import 'package:flutter/material.dart';
import 'package:testapp/views/pages/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Interview extends StatelessWidget {
  const Interview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBEB),

      body: SafeArea(
        child: Center(
          child: Container(
            width: 393,
            height: 852,
            decoration: BoxDecoration(
              //الخلفية اللي ورا
              color: const Color(0xFFFFFBEB),
              borderRadius: BorderRadius.circular(54),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  right: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 28,
                      backgroundColor: Color.fromARGB(0, 253, 255, 225),
                      child: FaIcon(
                        FontAwesomeIcons.userGraduate, // أيقونة الخريج
                        size: 28,
                        color: Color.fromARGB(255, 96, 96, 96),
                      ),
                    ),
                  ),
                ),

                /// العنوان
                const Positioned(
                  top: 105,
                  left: 0,
                  right: 0,
                  child: Text(
                    'تعليمات ماقبل المقابلة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),

                /// التعليمات
                Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 852 * 0.7,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFEFC),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(180),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                      border: Border.all(
                        color: const Color.fromARGB(107, 155, 155, 155),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(105, 133, 133, 133),
                          blurRadius: 5,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 248,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Color.fromARGB(255, 250, 236, 179),
                      ),
                      SizedBox(height: 20), // مسافة بين الأيقونات
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Color.fromARGB(255, 250, 236, 179),
                      ),
                      SizedBox(height: 35), // مسافة بين الأيقونات
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Color.fromARGB(255, 250, 236, 179),
                      ),
                      SizedBox(height: 35), // مسافة بين الأيقونات
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Color.fromARGB(255, 250, 236, 179),
                      ),
                      SizedBox(height: 35), // مسافة بين الأيقونات
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Color.fromARGB(255, 250, 236, 179),
                      ),
                      SizedBox(height: 30), // مسافة بين الأيقونات
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Color.fromARGB(255, 250, 236, 179),
                      ),
                    ],
                  ),
                ),

                /// التعليمات
                Positioned(
                  top: 250,
                  left: 60,
                  right: 60,
                  child: const Text(
                    '''
مدة المقابلة 5 دقائق فقط

يمكنك الإجابة عن السؤال بالضغط المستمر على الزر أثناء التحدث، وإفلاته عند الانتهاء

حاول إجراء المقابلة في مكان هادئ لتسجيل صوت واضح

إذا غادرت المقابلة قبل انتهاء الوقت، فلن يتم حفظ أي إجابات

عند إكمال المقابلة بالكامل، يمكنك عرض النتائج في صفحة المقابلات السابقة

ركّز وأكمل المقابلة ضمن الوقت المحدد للحصول على أفضل تقييم
''',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF101828),
                    ),
                  ),
                ),

                /// زر البدء
                Positioned(
                  bottom: 80, //نزلت الزر تحت اكثر
                  left: 0,
                  right: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InterviewPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 135,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 250, 236, 179),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: const Color(0x6BFEDF89)),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 5,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'بدء المقابلة',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//صفحة المقابلة الفعلية
class InterviewPage extends StatelessWidget {
  const InterviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 248, 234),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 393,
            height: 852,
            decoration: BoxDecoration(
              //الخلفية اللي ورا
              color: const Color.fromARGB(255, 255, 253, 247),
              borderRadius: BorderRadius.circular(54),
            ),
            child: Stack(
              children: [
                //مكان الصورة
                Positioned(
                  top: 250,
                  left: 0,
                  right: 0,
                  child: Image.asset('assets/images/Interview.png'),
                  height: 200,
                ),
                //البوكس اللي نحط فيه السؤال
                Positioned(
                  left: 80,
                  top: 450,
                  child: Container(
                    width: 241,
                    height: 51,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 250, 239),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromARGB(255, 178, 178, 178),
                      ),
                    ),
                  ),
                ),
                //السؤال نفسه
                Positioned(
                  left: 85,
                  top: 461,
                  child: const SizedBox(
                    width: 230,
                    child: Text(
                      'عرفنا عن نفسك',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),

                //زر التسجيل
                Positioned(
                  left: 159,
                  top: 566,
                  child: Container(
                    width: 94,
                    height: 94,

                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 232, 173),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(51, 91, 91, 91),
                          blurRadius: 27,
                          offset: Offset(0, 4),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Center(
                        child: Icon(
                          Icons.mic_none_sharp,
                          size: 40, // adjust size
                          color: Color.fromARGB(255, 90, 87, 87),
                        ),
                      ),
                    ),
                  ),
                ),
                //زر الرجوع للخلف
                Positioned(
                  left: 20,
                  top: 60,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 250, 239),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 224, 158),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(51, 255, 255, 255),
                          blurRadius: 27,
                          offset: Offset(0, 4),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: BackButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('تنبيه'),
                              content: Text(
                                'لقد أنهيت المقابلة قبل انتهاء الوقت. لن يتم حفظ او تقييم المقابلة.',
                              ),
                              actions: [
                                FilledButton(
                                  style: FilledButton.styleFrom(
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      254,
                                      231,
                                      165,
                                    ), // لون الزر
                                    foregroundColor: Colors.black,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const Interview(),
                                      ),
                                    );
                                  },
                                  child: Text('انهاء'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                //timer
                Positioned(
                  right: 20,
                  top: 60,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 250, 239),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 224, 158),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(51, 255, 255, 255),
                          blurRadius: 27,
                          offset: Offset(0, 4),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.timer,
                        size: 30, // adjust size
                        color: Color.fromARGB(255, 90, 87, 87),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
