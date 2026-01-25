import 'package:flutter/material.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              Positioned(
                left: 2,
                top: -1,
                child: Container(
                  width: 386,
                  height: 239,
                  decoration: ShapeDecoration(
                    color: const Color(0x96FFFCF5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(69),
                        topRight: Radius.circular(72),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(51),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 7,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 20,
                child: Container(
                  width: 326,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 219,
                    children: [
                      SizedBox(
                        width: 40,
                        child: Text(
                          '08:15',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF101828) /* Color-Text-Primary */,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.30,
                          ),
                        ),
                      ),
                      Container(
                        width: 67,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 5,
                          children: [
                            Opacity(
                              opacity: 0.35,
                              child: Container(
                                width: 22,
                                height: 11.33,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: const Color(0xFF101828) /* Color-Text-Primary */,
                                    ),
                                    borderRadius: BorderRadius.circular(2.67),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 18,
                              height: 7.33,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF101828) /* Color-Text-Primary */,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.33),
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
              Positioned(
                left: 311,
                top: -1212,
                child: SizedBox(
                  width: 49,
                  height: 22,
                  child: Text(
                    'Udemy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 311,
                top: -1212,
                child: SizedBox(
                  width: 49,
                  height: 22,
                  child: Text(
                    'Udemy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 343,
                top: 60,
                child: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/27x27"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 88,
                top: 211,
                child: Container(
                  width: 269,
                  height: 27,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 25,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 5,
                        children: [
                          Text(
                            'الكل',
                            style: TextStyle(
                              color: const Color(0xFF080808),
                              fontSize: 16,
                              fontFamily: 'Spartan',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            width: 53.01,
                            height: 3.78,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF080808),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  topRight: Radius.circular(4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 2,
                        children: [
                          Text(
                            'دورات',
                            style: TextStyle(
                              color: const Color(0xFF616161),
                              fontSize: 16,
                              fontFamily: 'Spartan',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'شهادات',
                        style: TextStyle(
                          color: const Color(0xFF616161),
                          fontSize: 16,
                          fontFamily: 'Spartan',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 80,
                top: 115,
                child: SizedBox(
                  width: 232,
                  height: 49,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      'كل معرفة تكتسبها تبني سدفًا يضيء دربك نحو النجاح الوظيفي.\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF262626),
                        fontSize: 13,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.54,
                        shadows: [Shadow(offset: Offset(0, 1), blurRadius: 4, color: Color(0xFF000000).withOpacity(0.25))],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 450,
                child: Container(
                  width: 293,
                  height: 61,
                  decoration: ShapeDecoration(
                    color: const Color(0x21FEEFC7),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x96FEDF89),
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 249,
                top: 462,
                child: SizedBox(
                  width: 75,
                  height: 24,
                  child: Text(
                    'Udemy',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 362,
                child: Container(
                  width: 293,
                  height: 61,
                  decoration: ShapeDecoration(
                    color: const Color(0x21FEEFC7),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x96FEDF89),
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 284,
                top: 371,
                child: SizedBox(
                  width: 41,
                  height: 24,
                  child: Text(
                    'دروب',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 273,
                child: Container(
                  width: 293,
                  height: 61,
                  decoration: ShapeDecoration(
                    color: const Color(0x21FEEFC7),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x96FEDF89),
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 173,
                top: 484,
                child: SizedBox(
                  width: 149,
                  height: 16,
                  child: Text(
                    'Flutter - Advanced Course',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.65),
                      fontSize: 12,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 254,
                top: 283,
                child: SizedBox(
                  width: 70,
                  height: 24,
                  child: Text(
                    'coursera',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 169,
                top: 306,
                child: SizedBox(
                  width: 153,
                  height: 16,
                  child: Text(
                    'UI / UX Design Specialization',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.65),
                      fontSize: 12,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 208,
                top: 395,
                child: SizedBox(
                  width: 116,
                  height: 16,
                  child: Text(
                    'Python Programming',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.65),
                      fontSize: 12,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 59,
                top: 283,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: const Color(0x00EBEBEB),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x99FEDF89),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 59,
                top: 372,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: const Color(0x00EBEBEB),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x99FEDF89),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 59,
                top: 459,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: const Color(0x00EBEBEB),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x99FEDF89),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 539,
                child: Container(
                  width: 293,
                  height: 61,
                  decoration: ShapeDecoration(
                    color: const Color(0x21FEEFC7),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x96FEDF89),
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 548,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: const Color(0x00EBEBEB),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x99FEDF89),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 628,
                child: Container(
                  width: 293,
                  height: 61,
                  decoration: ShapeDecoration(
                    color: const Color(0x21FEEFC7),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x96FEDF89),
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 249,
                top: 641,
                child: SizedBox(
                  width: 75,
                  height: 24,
                  child: Text(
                    'Microsoft',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 124,
                top: 666,
                child: SizedBox(
                  width: 201,
                  height: 16,
                  child: Text(
                    'Microsoft Certified: Azure Fundamentals                     ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.65),
                      fontSize: 12,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 637,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: const Color(0x00EBEBEB),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x99FEDF89),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 244,
                top: 547,
                child: SizedBox(
                  width: 75,
                  height: 24,
                  child: Text(
                    'Cisco',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 124,
                top: 574,
                child: SizedBox(
                  width: 204,
                  height: 16,
                  child: Text(
                    ' Cisco Certified Network Associate (CCNA)',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.65),
                      fontSize: 12,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 230,
                top: 286,
                child: Container(
                  width: 30,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: const Color(0x47FEDF89),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 228,
                top: 283,
                child: SizedBox(
                  width: 26,
                  height: 16,
                  child: Text(
                    'دورة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.92),
                      fontSize: 10,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 253,
                top: 379,
                child: Container(
                  width: 30,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: const Color(0x47FEDF89),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 251,
                top: 376,
                child: SizedBox(
                  width: 26,
                  height: 16,
                  child: Text(
                    'دورة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.92),
                      fontSize: 10,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 236,
                top: 467,
                child: Container(
                  width: 30,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: const Color(0x47FEDF89),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 234,
                top: 464,
                child: SizedBox(
                  width: 26,
                  height: 16,
                  child: Text(
                    'دورة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.92),
                      fontSize: 10,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 246,
                top: 552,
                child: Container(
                  width: 32,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: const Color(0x47FEDF89),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 218,
                top: 644,
                child: Container(
                  width: 32,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: const Color(0x47FEDF89),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 249,
                top: 550,
                child: SizedBox(
                  width: 26,
                  height: 16,
                  child: Text(
                    'شهادة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.92),
                      fontSize: 10,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 220,
                top: 641,
                child: SizedBox(
                  width: 26,
                  height: 16,
                  child: Text(
                    'شهادة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.92),
                      fontSize: 10,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 767,
                child: Container(
                  width: 388,
                  height: 85,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFFCF5) /* Color-Yellow-Yellow-25 */,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 7,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 115,
                top: 784,
                child: Container(
                  width: 27,
                  height: 27,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 27,
                          height: 27,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/27x27"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 144,
                        top: -7,
                        child: Container(
                          width: 27,
                          height: 27,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 27,
                                  height: 27,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/27x27"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -67,
                        top: 0,
                        child: Container(
                          width: 26,
                          height: 26,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/26x26"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 203,
                        top: 0,
                        child: Container(
                          width: 27,
                          height: 27,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 27,
                                  height: 27,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/27x27"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 140,
                top: 838,
                child: Container(
                  width: 114,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}