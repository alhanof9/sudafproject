import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InterviewHistory extends StatefulWidget {
  const InterviewHistory({super.key});

  @override
  State<InterviewHistory> createState() => _InterviewHistoryState();
}

int totalQuestions = 5;
int answeredQuestions = 3;
double progress = answeredQuestions / totalQuestions;

class _InterviewHistoryState extends State<InterviewHistory> {
  // نموذج بيانات لاسئلة المقابلة اللي تمت
  final List<Map<String, String>> InterviewQusetions = [
    {
      'Question': 'عرفنا عن نفسك',
      'UserAnswer':
          'اهلا أنا الهنوف خريجة نظم معلومات ومهتمة بمجال التحليل. طورت مهاراتي في العمل الجماعي من خلال مشاركتي كعضو في نادي الجامعة',
      'Color': 'green',
      'ModelAnswer': '',
    },
    {
      'Question': 'عرفنا عن نفسك',
      'UserAnswer':
          'تخصصي نظم معلومات درست فيه كثير من المواد العميقة وعملت على بعض المشاريع خلال دراستي',
      'Color': 'red',
      'ModelAnswer':
          '- ذكر التخصص -المهارات التي اكتسبتها من المواد الاساسية-المشاريع التي شاركت في تنفيذها باختصار',
    },
    {
      'Question': 'عرفنا عن نفسك',
      'UserAnswer':
          'اهلا أنا الهنوف خريجة نظم معلومات ومهتمة بمجال التحليل. طورت مهاراتي في العمل الجماعي من خلال مشاركتي كعضو في نادي الجامعة',
      'Color': 'green',
      'ModelAnswer': '',
    },
    {
      'Question': 'عرفنا عن نفسك',
      'UserAnswer':
          'اهلا أنا الهنوف خريجة نظم معلومات ومهتمة بمجال التحليل. طورت مهاراتي في العمل الجماعي من خلال مشاركتي كعضو في نادي الجامعة',
      'Color': 'green',
      'ModelAnswer': '',
    },
    {
      'Question': 'عرفنا عن نفسك',
      'UserAnswer':
          'اهلا أنا الهنوف خريجة نظم معلومات ومهتمة بمجال التحليل. طورت مهاراتي في العمل الجماعي من خلال مشاركتي كعضو في نادي الجامعة',
      'Color': 'green',
      'ModelAnswer': '',
    },
  ];

  /// نموذج بيانات لتكرار الكلمة
  final List<Map<String, String>> repeatWordData = [
    {'Word': 'يعني', 'Value': '30'},
    {'Word': 'امم', 'Value': '40'},
    {'Word': 'اوك', 'Value': '25'},
    {'Word': 'طبعاً', 'Value': '15'},
    {'Word': 'اعتقد', 'Value': '35'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: DefaultTabController(
        length: 2,
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
                    // زر الباك
                    Positioned(
                      top: 50,
                      left: 16,
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
                      left: 25,
                      top: 123,
                      child: Container(
                        width: 350,
                        height: 170,
                        decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 255, 250, 228),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    // عنوان الصفحة
                    Positioned(
                      right: 0,
                      top: 55,
                      child: SizedBox(
                        width: 183,
                        height: 39,
                        child: Text(
                          'نتيجة المقابلة',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Strait',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    // نص السؤال
                    Positioned(
                      left: 160,
                      top: 189,
                      child: SizedBox(
                        width: 248,
                        child: Text(
                          'مقابلة ممتازة',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 23,
                            fontFamily: 'Ribeye',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 170,
                      right: 230,
                      child: Transform.scale(
                        scale: 3,
                        child: TweenAnimationBuilder<double>(
                          tween: Tween<double>(begin: 0, end: progress),
                          duration: const Duration(seconds: 1),
                          builder: (context, value, child) {
                            return SizedBox(
                              width: 80,
                              height: 80,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  // الخلفية الرمادية
                                  CircularProgressIndicator(
                                    value: 1.0,
                                    backgroundColor: Colors.grey[300],
                                    color: Colors.grey[300],
                                    strokeWidth: 6,
                                  ),
                                  // الحلقة الصفراء المتحركة
                                  CircularProgressIndicator(
                                    value: value,
                                    backgroundColor: Colors.transparent,
                                    color: const Color.fromARGB(
                                      255,
                                      0,
                                      129,
                                      13,
                                    ),
                                    strokeWidth: 6,
                                  ),
                                  // النسبة داخل الحلقة
                                  Text(
                                    '${(value * 100).toInt()}%',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    // التاب حق الاسئاة والتكرار
                    Positioned(
                      left: 30,
                      top: 320,
                      child: Container(
                        width: 340,
                        height: 36,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(color: Color(0x3F000000), blurRadius: 3),
                          ],
                        ),
                        child: TabBar(
                          dividerColor: Colors.transparent,
                          indicatorColor: Colors.transparent,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorPadding: const EdgeInsets.symmetric(
                            horizontal: -2,
                            vertical: -2,
                          ),
                          indicator: BoxDecoration(
                            color: const Color(0xFFFEDF89),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          labelColor: const Color(0xFF475467),
                          unselectedLabelColor: const Color(0xFF475467),
                          labelStyle: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                          tabs: const [
                            Tab(text: 'اسئلة المقابلة'),
                            Tab(text: 'تكرار الكلمة'),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 360, // تحت التاب مباشرة
                      right: 0,
                      child: Container(
                        height: 480,
                        child: TabBarView(
                          children: [
                            /// تاب اسئلة المقابلة
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: InterviewQusetions.length,
                              itemBuilder: (context, index) {
                                final item = InterviewQusetions[index];

                                return interviewCard(item);
                              },
                            ),

                            ///تاب تكرار الكلمة
                            SingleChildScrollView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              child: RepeatWordChart(data: repeatWordData),
                            ),
                          ],
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

  Widget interviewCard(Map<String, String> data) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 65, 64, 64).withOpacity(0.5),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // دائرة اللون و السؤال
          Row(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: data['Color'] == 'green' ? Colors.green : Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'السؤال: ${data['Question']}',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // إجابة المستخدم
          const Divider(height: 15),
          Text(
            'إجابتك: ${data['UserAnswer']}',
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 14),
          ),

          // الإجابة النموذجية إذا موجودة
          if (data['ModelAnswer'] != null &&
              data['ModelAnswer']!.isNotEmpty) ...[
            const Divider(height: 24),
            Text(
              'الإجابة النموذجية',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 6),
            Text(data['ModelAnswer']!, textAlign: TextAlign.right),
          ],
        ],
      ),
    );
  }
}

class SingleBarWidget extends StatelessWidget {
  final String label;
  final double value; // من 0 إلى 100
  final double width;
  final double maxHeight;

  const SingleBarWidget({
    super.key,
    required this.label,
    required this.value,
    this.width = 100,
    this.maxHeight = 150,
  });

  @override
  Widget build(BuildContext context) {
    final double height = (value / 100) * maxHeight; // نسبة العمود
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // النص فوق العمود
        Text(
          '${value.toInt()}%',
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        // العمود نفسه
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: const Color(0xFFFFD98D),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(height: 4),
        // التسمية تحت العمود
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class RepeatWordChart extends StatelessWidget {
  final List<Map<String, String>>
  data; // البيانات: [{'label': 'يعني', 'value': '70'}, ...]

  const RepeatWordChart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: data.map((item) {
          final double value = double.tryParse(item['value'] ?? '0') ?? 0;
          return SingleBarWidget(
            label: item['label'] ?? '',
            value: value,
            width: 20,
            maxHeight: 150,
          );
        }).toList(),
      ),
    );
  }
}
