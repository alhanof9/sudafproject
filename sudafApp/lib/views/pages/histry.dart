import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/views/pages/profile.dart';
import 'package:testapp/views/pages/InterviewHistory.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late final ScrollController _interviewsController;
  @override
  void initState() {
    super.initState();
    _interviewsController = ScrollController();
  }

  @override
  void dispose() {
    _interviewsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            children: [
              // الخلفية المنحنية
              Container(
                width: 391,
                height: 180,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFCF5),
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
                top: 30,
                right: 10,
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
              Positioned(
                left: 95,
                top: 80,
                child: SizedBox(
                  width: 208,
                  height: 39,
                  child: Text(
                    'المقابلات السابقة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 40),
          // كرت المقابلات
          SizedBox(
            height: 500,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              controller: _interviewsController,
              reverse: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 351,
                  height: 80,
                  margin: const EdgeInsets.only(
                    bottom: 20,
                    left: 16,
                    right: 16,
                  ),
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 255, 247, 230),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 7,
                        offset: Offset(0, 1),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      // النص في نفس المكان لكل كرت
                      Positioned(
                        top: 22,
                        right: 35,
                        child: Text(
                          '${index + 1} المقابلة', // النص يتغير حسب index
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12,
                        top: 16,
                        child: Container(
                          width: 45,
                          height: 46,
                          decoration: ShapeDecoration(
                            color: const Color.fromARGB(95, 251, 219, 130),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                          ),
                        ),
                      ),
                      //زر الدخول لكل مقابلة
                      Positioned(
                        bottom: 20,
                        left: 14,
                        child: BackButton(
                          color: const Color.fromARGB(255, 255, 185, 65),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const InterviewHistory(),
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
        ],
      ),
    );
  }
}
