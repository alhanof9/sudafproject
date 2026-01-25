import 'package:flutter/material.dart';
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          // Stack للخلفية + أيقونة البروفايل
        Stack(
          children: [
            // الخلفية المنحنية
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 252, 245),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
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
            // أيقونة البروفايل
            Positioned(
              top: 40,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfilePage()),
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
          ],
        ),

          // عنوان الأسئلة العملية
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 20),
            child: Text(
              'الأسئلة العملية',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              textAlign: TextAlign.right,
            ),
          ),

          // Dropdown
          Padding(
            padding: const EdgeInsets.only(top: 9.0, right: 20),
            child: Container(
              width: 220,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: const Color.fromARGB(255, 255, 238, 153)),
              ),
              child: DropdownButton<String>(
                value: dropdownValue,
                
                isExpanded: true,
                icon: const Icon(Icons.arrow_drop_down),
                underline: Container(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'مهندس برمجيات',
                  'مصمم واجهات',
                  'محلل بيانات',
                  'مدير مشروع'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, textAlign: TextAlign.right),
                  );
                }).toList(),
              ),
            ),
          ),
        SizedBox(height: 16),
          // كرت الأسئلة
          SizedBox(
            height: 170,
            child: ListView.builder(
    
              scrollDirection: Axis.horizontal,
              controller: _questionsController,
              reverse: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 239,
                  margin: const EdgeInsets.only(left: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 252, 232),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: const Color.fromARGB(255, 254, 223, 137)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'سؤال ${index + 1}: كيف تتعامل مع خطأ أو مشكلة في الكود؟',
                        textAlign: TextAlign.right,
                        style: const TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: BackButton(
                          color: const Color.fromARGB(255, 234, 188, 110),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => const Questions()),
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

          // الأخطاء الشائعة
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 20),
            child: Text(
              'الأخطاء الشائعة',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              textAlign: TextAlign.right,
            ),
          ),

          // كرت الأخطاء
          SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              reverse: true,
              controller: _errorsController,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 239,
                  margin: const EdgeInsets.only(left: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 252, 232),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: const Color.fromARGB(255, 254, 223, 137)),
                  ),
                  child: Text(
                    'عدم قراءة معلومات كافية عن الشركة قبل المقابلة.',
                    textAlign: TextAlign.right,
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
