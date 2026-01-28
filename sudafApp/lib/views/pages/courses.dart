import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/views/pages/profile.dart';
import 'package:url_launcher/url_launcher.dart';

// --- صفحة بروفايل وهمية لضمان عمل الكود ---

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, String>> allCourses = [
    {
      'title': 'UI / UX Design Specialization',
      'provider': 'coursera',
      'type': 'دورة',
      'url': 'https://www.coursera.org/specializations/ui-ux-design',
    },
    {
      'title': 'Python Programming',
      'provider': 'دروب',
      'type': 'دورة',
      'url': 'https://www.doroob.sa/courses/python',
    },
    {
      'title': 'Flutter - Advanced Course',
      'provider': 'Udemy',
      'type': 'دورة',
      'url': 'https://www.udemy.com/course/flutter-advanced',
    },
    {
      'title': 'Cisco Certified Network Associate (CCNA)',
      'provider': 'Cisco',
      'type': 'شهادة',
      'url': 'https://www.cisco.com/',
    },
    {
      'title': 'Microsoft Certified: Azure Fundamentals',
      'provider': 'Microsoft',
      'type': 'شهادة',
      'url': 'https://learn.microsoft.com/',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Map<String, String>> filterCourses(String type) {
    if (type == 'الكل') return allCourses;
    return allCourses.where((c) => c['type'] == type).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // نفس خلفية الهوم بيج
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 255, 252, 245),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(55)),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfilePage(),
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.transparent,
                        child: FaIcon(
                          FontAwesomeIcons.userGraduate,
                          size: 24,
                          color: Color.fromARGB(255, 96, 96, 96),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'كل معرفة تكتسبها تبني سدفًا يضيء دربك نحو النجاح الوظيفي',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF5A5A5A),
                    fontFamily: 'Cairo',
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            indicatorWeight: 2,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Cairo'),
            tabs: const [
              Tab(text: 'الكل'),
              Tab(text: 'دورات'),
              Tab(text: 'شهادات'),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildCourseList('الكل'),
          buildCourseList('دورة'),
          buildCourseList('شهادة'),
        ],
      ),
    );
  }

  Widget buildCourseList(String type) {
    final courses = filterCourses(type);

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        var course = courses[index];
        // هنا تم تطبيق تصميم الـ HomePage بضبط
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFDF6), // لون الخلفية الفاتح
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFFFEDF89).withOpacity(0.5), // لون الإطار
            ),
          ),
          child: Row(
            children: [
              // 1. أيقونة السهم (على اليسار)
              GestureDetector(
                onTap: () async {
                  var url = Uri.parse(course['url']!);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xFFFEDF89)),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 16,
                    color: Color(0xFFFEDF89),
                  ),
                ),
              ),
              
              const Spacer(),
              
              // 2. النصوص والتفاصيل (على اليمين)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // الصف العلوي: الشارة + اسم الجهة
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // الشارة (Tag)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF4D8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            course['type']!,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        // اسم الجهة (Subtitle)
                        Flexible(
                          child: Text(
                            course['provider']!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'Cairo',
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    // العنوان السفلي (اسم الدورة)
                    Text(
                      course['title']!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontFamily: 'Cairo',
                      ),
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}