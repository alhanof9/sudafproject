import 'package:flutter/material.dart';
import 'package:testapp/data/notifiers.dart';
import 'package:testapp/views/pages/courses.dart';
import 'package:testapp/views/pages/histry.dart';
import 'package:testapp/views/pages/home.dart';
import 'package:testapp/views/pages/interview.dart';
import 'package:testapp/views/pages/practical_questions_page.dart';
import 'package:testapp/views/widgets/navbar_widget.dart';

 List<Widget> pages =[
    PracticalQuestionsPage(), // أسئلة + أخطاء
    Interview(),
    HomePage(),
    CoursesPage(),
    HistoryPage(),
  ];

class WidgetsTree extends StatelessWidget {
  const WidgetsTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget()

    );
  }
}