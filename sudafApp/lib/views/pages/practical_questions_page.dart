import 'package:flutter/material.dart';
import 'package:testapp/views/pages/edit_profile.dart';
// تأكدي أن المسار هنا صحيح حسب مشروعك
import 'package:testapp/views/pages/questions.dart'; 
import 'package:testapp/views/pages/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PracticalQuestionsPage extends StatefulWidget {
  const PracticalQuestionsPage({super.key});

  @override
  State<PracticalQuestionsPage> createState() => _PracticalQuestionsPageState();
}

class _PracticalQuestionsPageState extends State<PracticalQuestionsPage> {
  String dropdownValue = 'مهندس برمجيات';
  late final ScrollController _questionsController;
  late final ScrollController _errorsController;

  /// 🔹 الأسئلة حسب التخصص مع إجابات نموذجية (أضفت إجابات بسيطة كمثال)
  final Map<String, List<Map<String, String>>> questionsByRole = {
    "مهندس برمجيات": [
      {"q": "كيف تتعامل مع خطأ في الكود؟", "a": "أبدأ بتحليل الخطأ باستخدام الـ Debugger ومراجعة الـ Stack Trace ثم تجربة الحل واختباره."},
      {"q": "ما هو مفهوم OOP؟", "a": "هي برمجة كائنية التوجه تعتمد على الحلقات والوراثة وتعدد الأشكال لتنظيم الكود."},
      {"q": "كيف تحسن أداء التطبيق؟", "a": "عن طريق تقليل حجم الصور، تحسين الـ Algorithms، وإدارة الـ Memory بشكل صحيح."},
    ],
    "مصمم واجهات": [
      {"q": "ما الفرق بين UX و UI؟", "a": "الـ UX يركز على تجربة المستخدم وسهولة الاستخدام، بينما الـ UI يركز على المظهر البصري."},
      {"q": "كيف تختار الألوان؟", "a": "بناءً على نظرية الألوان، هوية العلامة التجارية، وسيكولوجية الألوان للمستخدمين."},
    ],
    // يمكنك إضافة البقية بنفس التنسيق...
  };

  final List<String> commonMistakes = [
    "عدم قراءة معلومات كافية عن الشركة قبل المقابلة.",
    "التأخر عن موعد المقابلة.",
    "الإجابات الطويلة بدون تركيز.",
    "عدم تجهيز أمثلة عملية.",
    "إهمال لغة الجسد.",
  ];

  @override
  void initState() {
    super.initState();
    _questionsController = ScrollController();
    _errorsController = ScrollController();
  }

  @override
  void dispose() {
    _questionsController.dispose();
    _errorsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // جلب قائمة الأسئلة بناءً على التخصص المختار
    final currentQuestions = questionsByRole[dropdownValue] ?? [];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            /// 🔶 الهيدر المنحني مع الشدو
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 160,
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
                Positioned(
                  top: 50,
                  right: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const EditProfilePage()), 
                      );
                    },
                    child: const CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.transparent,
                      child: FaIcon(
                        FontAwesomeIcons.userGraduate,
                        size: 28,
                        color: Color.fromARGB(255, 96, 96, 96),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.only(top: 16.0, right: 20),
              child: Text(
                'الأسئلة العملية',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),

            /// 🔹 Dropdown التخصص
            Padding(
              padding: const EdgeInsets.only(top: 9.0, right: 20),
              child: Container(
                width: 220,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: const Color(0xFFFEDF89)),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFFEDF89)),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: questionsByRole.keys.map((role) {
                      return DropdownMenuItem(
                        value: role,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(role, textAlign: TextAlign.right)
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            /// 🔹 كروت الأسئلة (تم التعديل لترسل البيانات لصفحة Questions)
            SizedBox(
              height: 180,
              child: ListView.builder(
                controller: _questionsController,
                scrollDirection: Axis.horizontal,
                reverse: true,
                itemCount: currentQuestions.length,
                itemBuilder: (context, index) {
                  final item = currentQuestions[index];
                  return Container(
                    width: 250,
                    margin: const EdgeInsets.only(right: 20, left: 10, bottom: 10),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFDF5),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0xFFFEDF89)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item['q']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                            color: const Color(0xFFEABC6E),
                            onPressed: () {
                              // التنقل وإرسال السؤال والإجابة
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Questions(
                                    question: item['q']!,
                                    answer: item['a']!,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 16.0, right: 20),
              child: Text(
                'الأخطاء الشائعة',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),

            /// 🔹 كروت الأخطاء
            SizedBox(
              height: 150,
              child: ListView.builder(
                controller: _errorsController,
                scrollDirection: Axis.horizontal,
                reverse: true,
                itemCount: commonMistakes.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 250,
                    margin: const EdgeInsets.only(right: 20, left: 10, bottom: 10),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFDF5),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0xFFFEDF89)),
                    ),
                    child: Text(
                      commonMistakes[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 14),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}