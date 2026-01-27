import 'package:flutter/material.dart';
import 'package:testapp/views/widgets_tree.dart';

class InitialTest extends StatelessWidget {
  const InitialTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFDF3), // خلفية الشاشة
      body: Stack(
        children: [

          // المربع الأبيض في الأسفل
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 456,
              decoration: ShapeDecoration(
                color: const Color(0xFFFDFCFC), // لون المربع الأبيض
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 20,
                    offset: Offset(0, -4),
                  ),
                ],
              ),
            ),
          ),

          // الصورة اللوجو
          Positioned(
            left: 57,
            top: 268,
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

          // النص فوق المربع الأبيض
          Positioned(
            left: 68,
            top: 480, // رفعت النص فوق شوي عشان يبان
            child: SizedBox(
              width: 257,
              height: 65,
              child: Text(
                'نحتاج نقيم جاهزيتك لمقابلات العمل من خلال الاختبار المبدئي.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF667085),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 1.20,
                  letterSpacing: 0.15,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 1),
                      blurRadius: 4,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // زر البدء
          Positioned(
            left: 133,
            top: 580,
              child: GestureDetector(
            onTap: () {
              Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => TestPage()),
               );
            },
              child: Container(
              width: 133,
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFFFFF3C2),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: const Color(0x6BFEDF89),
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 5,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'ابدأ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1.11,
                      letterSpacing: 0.10,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 24,
                    shadows: [  
                      Shadow(
                        offset: Offset(0, 1),
                        blurRadius: 4,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

     ),
        ],  
      ),
    );
  }
}


class Question {
  final String text;
  final List<String>? options; // إذا null => هذا سؤال عداد
  Question({required this.text, this.options});
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuizPage(),
    );
  }
}

// ---------------------------
class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

// ---------------------------
class _QuizPageState extends State<QuizPage> {
  int currentQuestion = 0;
  int? selectedOption;

  final List<Question> questions = [
    Question(text: 'انا شخص جيد في الاستماع الى الاخرين', options: [
      'اوافق بشدة',
      'اوافق',
      'احياناً',
      'لا اوافق',
      'لا اوافق بشدة',
    ]),
    Question(text: 'أنا قادر على التعبير عن أفكاري بوضوح في معظم المواقف', options: [
      'اوافق بشدة',
      'اوافق',
      'احياناً',
      'لا اوافق',
      'لا اوافق بشدة',
    ]),
    Question(text: 'أستطيع أن أتأقلم مع مواضيع المحادثة المختلفة بسهولة', options: [
      'اوافق بشدة',
      'اوافق',
      'احياناً',
      'لا اوافق',
      'لا اوافق بشدة',
    ]),
   
     Question(text:   'أنا قادر على إقناع الآخرين بآرائي', options: [
      'اوافق بشدة',
      'اوافق',
      'احياناً',
      'لا اوافق',
      'لا اوافق بشدة',
    ]),
     Question(text:      'أنا واثق من قدرتي على التعامل مع الخلافات أو الصراعات في الحديث', options: [
      'اوافق بشدة',
      'اوافق',
      'احياناً',
      'لا اوافق',
      'لا اوافق بشدة',
    ]),
     Question(text:     'عندما أتحدث، أُظهر للآخرين أنني مهتم بما يقولونه', options: [
      'اوافق بشدة',
      'اوافق',
      'احياناً',
      'لا اوافق',
      'لا اوافق بشدة',
    ]),
       Question(text:  'أستطيع فهم وجهات نظر الآخرين بسهولة', options: [
      'اوافق بشدة',
      'اوافق',
      'احياناً',
      'لا اوافق',
      'لا اوافق بشدة',
    ]),    
    
    Question(text: 'كم دورة حصلت عليها'), // عداد رقمي
    Question(text: 'كم شهادة احترافيه حصلت عليها'), // عداد رقمي
    Question(text: 'ما عدد الساعات التطوعيه التي حصلت عليها'), // عداد رقمي
  ];

  // ---------------------------
  void nextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
        selectedOption = null;
      });
    } else {
      // آخر سؤال
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('انتهى الاختبار'),
          content: const Text(' نتيجة الاختبار المبدئي تعطيك لمحة عن مستواك الحالي مع اقتراحاتنا البسيطة تعزز جاهزيتك لمقابلات العمل.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => WidgetsTree()),
                (route) => false,
              ),
              child: const Text('حسناً'),
            )
          ],
        ),
      );
    }
  }

  // ---------------------------
  Widget buildQuestionArea() {
    final question = questions[currentQuestion];

    if (question.options != null) {
      // أسئلة متعددة الخيارات
      return Column(
        children: List.generate(question.options!.length, (index) {
          bool isSelected = selectedOption == index;
          return GestureDetector(
            onTap: () => setState(() => selectedOption = index),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              height: 51,
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFFFFF3C2) : const Color(0xFFFFFDF5),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: const Color(0xFFFEDF89)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(question.options![index], style: const TextStyle(fontSize: 16)),
            ),
          );
        }),
      );
    } else {
      // أسئلة عداد رقمي
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white, // خلفية المربع
          border: Border.all(color: const Color(0xFFFEDF89), width: 1), // اللون والسمك
          borderRadius: BorderRadius.circular(24), // الانحناء
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => setState(() {
                selectedOption = (selectedOption ?? 0) - 1;
                if (selectedOption! < 0) selectedOption = 0;
              }),
              icon: const Icon(Icons.remove_circle_outline),
            ),
            Container(
              width: 60,
              alignment: Alignment.center,
              child: Text(
                '${selectedOption ?? 0}',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                selectedOption = (selectedOption ?? 0) + 1;
              }),
              icon: const Icon(Icons.add_circle_outline),
            ),
          ],
        ),
);

    }
  }

  // ---------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFDF3),
      body: Center(
        child: Stack(
          children: [
            // المربع الأبيض الكبير
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            ),

            // الخلفية المنحنية الفاتحة
            Positioned(
              left: 1,
              top: 0,
              child: Container(
                width: 389,
                height: 206,
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 255, 252, 245),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
              ),
            ),

            // شريط التقدم بموجات صوتية
            Positioned(
              left: 40,
              top: 60,
              right: 40,
              child: WaveProgressBar(
                steps: questions.length,
                completed: currentQuestion + 1,
              ),
            ),

            // بطاقة السؤال
            Positioned(
              left: 40,
              top: 130,
              right: 40,
              height: 170,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFDF5),
                  border: Border.all(color: const Color(0xFFFEDF89), width: 2),
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 7,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    questions[currentQuestion].text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            // المنطقة اللي تحتوي الخيارات أو العداد
            Positioned(
              left: 44,
              top: 320,
              right: 44,
              child: buildQuestionArea(),
            ),

            // زر التالي/إنهاء
            Positioned(
              right: 40,
              bottom: 60,
              child: GestureDetector(
                onTap: selectedOption != null ? nextQuestion : null,
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF3C2),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 7,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    currentQuestion == questions.length - 1 ? 'إنهاء' : 'التالي',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
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

// ---------------------------
// شريط التقدم بموجات صوتية
class WaveProgressBar extends StatelessWidget {
  final int steps;
  final int completed;

  const WaveProgressBar({super.key, required this.steps, required this.completed});

  @override
  Widget build(BuildContext context) {
    final List<double> heights = [16, 28, 16, 36, 16, 27, 16, 32, 16, 24];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(steps, (index) {
        return Container(
          width: 10,
          height: heights[index % heights.length],
          margin: const EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            color: index < completed ? const Color(0xFFFDB022) : const Color(0xFFFEEFC7),
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }
}