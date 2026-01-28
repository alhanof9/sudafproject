import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/views/pages/profile.dart';



// ==========================================
// نموذج البيانات (Data Model) - لجعل التطبيق ديناميكي
// ==========================================
class InterviewData {
  final String id;
  final String status;
  final String scoreText; // النص الظاهر "5/4"
  final double scoreValue; // القيمة للعداد 0.8
  final bool isSuccess;
  final List<Map<String, String>> questions;
  final List<Map<String, String>> words;

  InterviewData({
    required this.id,
    required this.status,
    required this.scoreText,
    required this.scoreValue,
    required this.isSuccess,
    required this.questions,
    required this.words,
  });
}

// بيانات وهمية مختلفة لكل مقابلة
final List<InterviewData> allInterviews = [
  InterviewData(
    id: '1',
    status: 'ناجحة',
    scoreText: '5/4',
    scoreValue: 0.8,
    isSuccess: true,
    questions: [
      {
        'Question': 'عرفنا عن نفسك',
        'UserAnswer': 'أهلاً، أنا الهنوف المطيري، خريجة نظم معلومات ومهتمة بمجال التحليل. طوّرت مهاراتي في العمل الجماعي من خلال مشاركتي كعضو في نادي الجامعة',
        'Color': 'green',
        'ModelAnswer': '',
      },
      {
        'Question': 'تحدث عن مشروع التخرج',
        'UserAnswer': 'مشروعي كان عبارة عن تطبيق...',
        'Color': 'green',
        'ModelAnswer': '',
      },
    ],
    words: [
     {'Word': 'امم', 'Value': '95'},
      {'Word': 'يعني', 'Value': '22'},
      {'Word': 'مدري', 'Value': '68'},
      {'Word': 'اعتقد', 'Value': '12'},
      {'Word': 'اوك', 'Value': '88'},
    ],
  ),
  InterviewData(
    id: '2',
    status: 'تدرب أكثر',
    scoreText: '5/2',
    scoreValue: 0.4,
    isSuccess: false,
    questions: [
      {
        'Question': 'ما هي نقاط ضعفك؟',
        'UserAnswer': 'ما عندي نقاط ضعف/ ماعرف ابرمج ولا احب البرمجه ابدا ماحس شخصيتي',
        'Color': 'red',
        'ModelAnswer': '- ذكر نقاط ضعف حقيقية\n- كيفية العمل عليها',
      },
       {
        'Question': 'لماذا تريد العمل معنا؟',
        'UserAnswer': ' لأن رواتبكم ممتازة ودوام ساعات قليله لان ماحب الصبح .',
        'Color': 'red',
        'ModelAnswer': '- التحدث عن بيئة العمل\n- الطموح والتطور',
      },
    ],
    words: [
      {'Word': 'امم', 'Value': '80'},
      {'Word': 'يعني', 'Value': '60'},
      {'Word': 'مدري', 'Value': '40'},
      {'Word': 'اعتقد', 'Value': '40'},
      {'Word': 'اوك', 'Value': '40'},

    ],
  ),
  InterviewData(
    id: '3',
    status: 'ناجحة',
    scoreText: '5/5',
    scoreValue: 1.0,
    isSuccess: true,
    questions: [
      {
        'Question': 'كيف تتعامل مع الضغط؟',
        'UserAnswer': 'أقوم بتنظيم وقتي وأرتب الأولويات.',
        'Color': 'green',
        'ModelAnswer': '',
      },
    ],
    words: [
      {'Word': 'امم', 'Value': '4'},
      {'Word': 'يعني', 'Value': '13'},
      {'Word': 'مدري', 'Value': '56'},
      {'Word': 'اعتقد', 'Value': '76'},
      {'Word': 'اوك', 'Value': '44'},
    ],
  ),
];

// ==========================================
// الصفحة الأولى: قائمة المقابلات (HistoryPageAlhanof)
// ==========================================

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 249, 249),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            // --- الهيدر المنحني ---
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFBEF),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                ),
                // العنوان
                const Positioned(
                  bottom: 40,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'المقابلات السابقة',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                
                // ✅ تعديل: البروفايل أصبح يمين (right: 20)
                Positioned(
                  top: 50,
                  right: 20, 
                  child: GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage())),
                    child: const FaIcon(
                      FontAwesomeIcons.userGraduate,
                      size: 26,
                      color: Color(0xFF555555),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // --- القائمة ---
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                itemCount: allInterviews.length,
                itemBuilder: (context, index) {
                  final item = allInterviews[index];
                  return _buildInterviewCard(context, item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInterviewCard(BuildContext context, InterviewData item) {
    return GestureDetector(
      // ✅ تعديل: الانتقال وتمرير البيانات الخاصة بالمقابلة المحددة
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => InterviewReport(data: item),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 248, 243, 229),
          //ابي احط بوردر هنا 
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            // الرقم
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(236, 254, 232, 151).withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: Text(
                item.id,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE8AA42),
                ),
              ),
            ),
            
            const SizedBox(width: 16),

            // النصوص
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'المقابلة ${item.id}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: item.isSuccess ? const Color(0xFFE6F4EA) : const Color(0xFFFCE8E6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          item.status,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: item.isSuccess ? const Color(0xFF1E8E3E) : const Color(0xFFC5221F),
                            fontFamily: 'Tajawal',
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          item.scoreText,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: item.isSuccess ? const Color(0xFF1E8E3E) : const Color(0xFFC5221F),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Icon(
              Icons.arrow_forward_ios_rounded, //           
              size: 25,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}


// ==========================================
// الصفحة الثانية: تفاصيل المقابلة (InterviewHistoryAlhanof)
// ==========================================

class InterviewReport extends StatelessWidget {
  // استقبال البيانات
  final InterviewData data;

  const InterviewReport({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 254, 244),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            const SizedBox(height: 50),
            // --- الهيدر ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: const Text(
                      'نتيجة المقابلة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft, // السهم فوق يمين (حسب الاتجاه RTL)
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios,
                          color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // --- بطاقة التقييم (ديناميكية) ---
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24,vertical:0),
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 246, 221),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      blurRadius: 10,
                      offset: const Offset(0, 4)), // البوكس العلوي حق الدائرة
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: CircularProgressIndicator(
                          value: data.scoreValue, // ✅ القيمة من البيانات
                          backgroundColor: Colors.white,
                          color: data.isSuccess
                              ? const Color(0xFF34A853)
                              : const Color(0xFFC5221F), /// لون الدائرة
                          strokeWidth: 10,
                          strokeCap: StrokeCap.round,
                        ),
                      ),
                      Text(
                        data.scoreText, // ✅ النص من البيانات
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    data.isSuccess
                        ? 'مقابلة ممتازة'
                        : 'تحتاج تدريب', // ✅ نص متغير
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // --- التبويبات والمحتوى ---
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: const Color(0xFFFEDF89),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: 'Tajawal'),
                        tabs: const [
                          Tab(text: 'اسئلة المقابلة'),
                          Tab(text: 'تكرار الكلمة'),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    Expanded(
                      child: TabBarView(
                        children: [
                          // 1. قائمة الأسئلة (ديناميكية)
                          ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: data.questions.length, // ✅ الطول من البيانات
                            itemBuilder: (context, index) {
                              return _buildQuestionCard(data.questions[index]);
                            },
                          ),

                          // 2. الرسم البياني (ديناميكي)
                          SingleChildScrollView(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: _buildChartCard(
                                  data.words), // ✅ الكلمات من البيانات
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ودجت السؤال)
  Widget _buildQuestionCard(Map<String, String> qData) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16, top: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.9),
              blurRadius: 10,
              offset: const Offset(0, 5)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment:
                CrossAxisAlignment.start, // ✅ محاذاة للأعلى للنصوص الطويلة
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: qData['Color'] == 'green'
                        ? const Color(0xFF34A853)
                        : const Color(0xFFEA4335),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'السؤال: ${qData['Question']}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Tajawal'),
                  softWrap: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF9F9F9),
              borderRadius: BorderRadius.circular(12),
            ),
            // ✅ تم التعديل هنا: إزالة height: 5 وإضافة maxLines: null
            child: Text(
              'اجابتك: ${qData['UserAnswer']}',
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black87,
                height: 1.5, // ارتفاع طبيعي للسطر
              ),
              softWrap: true,
              maxLines: null, // يسمح بتعدد الأسطر
            ),
          ),
          if (qData['ModelAnswer'] != null &&
              qData['ModelAnswer']!.isNotEmpty) ...[
            const SizedBox(height: 12),
            const Text(
              'الاجابة النموذجية:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              qData['ModelAnswer']!,
              style: const TextStyle(
                  fontSize: 12, color: Colors.black54, height: 1.5),
            ),
          ],
        ],
      ),
    );
  }

  // ودجت الرسم البياني (مع الأرقام)
  Widget _buildChartCard(List<Map<String, String>> wordsData) {
    return Container(
      height: 320,
      margin:  const EdgeInsets.only(bottom: 16, top: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.9), blurRadius: 10),
        ],
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                5, (index) => const Divider(color: Color(0xFFEEEEEE))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: wordsData.map((item) {
              double val = double.tryParse(item['Value']!) ?? 0;
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // ✅ إضافة الرقم فوق العمود
                  Text(
                    '${val.toInt()}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // العمود
                  Container(
                    width: 18,
                    height: val * 1.8,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEDF89),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // الكلمة
                  Text(
                    item['Word']!,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}