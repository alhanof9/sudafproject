import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/views/pages/profile.dart';
import 'package:url_launcher/url_launcher.dart';

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
      'url': 'https://www.cisco.com/c/en/us/training-events/training-certifications/certifications.html',
    },
    {
      'title': 'Microsoft Certified: Azure Fundamentals',
      'provider': 'Microsoft',
      'type': 'شهادة',
      'url': 'https://learn.microsoft.com/en-us/certifications/azure-fundamentals/',
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
      backgroundColor: Colors.white,
     appBar: PreferredSize(
  preferredSize: const Size.fromHeight(180), // زودنا الارتفاع عشان يظهر النص والأيقونة
  child: AppBar(
    elevation: 0,
    backgroundColor: const Color.fromARGB(255, 255, 252, 245),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(55),
      ),
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
                    MaterialPageRoute(builder: (context) => const ProfilePage()),
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
          Text(
            'كل معرفة تكتسبها تبني سدفًا يضيء دربك نحو النجاح الوظيفي',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromARGB(255, 117, 117, 117),
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
      padding: const EdgeInsets.all(16),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        var course = courses[index];
        return SizedBox(
          height: 120,
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: const BorderSide(
                color: Color(0xFFFEDF89),
                width: 1,
              ),
            ),
            color: const Color.fromARGB(244, 255, 251, 239),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () async {
                      var url = Uri.parse(course['url']!);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url,
                            mode: LaunchMode.externalApplication);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('لا يمكن فتح الرابط')),
                        );
                      }
                    },
                    child: const CircleAvatar(
                      backgroundColor: Color.fromARGB(241, 255, 248, 227),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Color.fromARGB(255, 254, 207, 96),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          course['title']!,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          course['provider']!,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 255, 248, 227),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(
                          color: Color(0xFFFEDF89),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      course['type']!,
                      style: const TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
