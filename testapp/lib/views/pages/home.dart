import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                top: 0,
                child: Container(
                  width: 386,
                  height: 252,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFFCF5) /* Color-Yellow-Yellow-25 */,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(53),
                        topRight: Radius.circular(55),
                        bottomLeft: Radius.circular(90),
                        bottomRight: Radius.circular(90),
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
                left: 22,
                top: 298,
                child: Container(
                  width: 348,
                  height: 404,
                  decoration: ShapeDecoration(
                    color: const Color(0x47EFEFEF),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.white.withValues(alpha: 0.13),
                      ),
                      borderRadius: BorderRadius.circular(45),
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
                left: 48,
                top: 531,
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
                top: 543,
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
                left: 112,
                top: 109,
                child: Container(
                  width: 167,
                  height: 167,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFCFCFD) /* Color-Gray-Gray-25 */,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(113.50),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 7,
                        offset: Offset(0, 3),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 447,
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
                top: 456,
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
                left: 179,
                top: 64,
                child: SizedBox(
                  width: 146,
                  height: 18,
                  child: Text(
                    'اهلاً Aljohara',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 152,
                top: 232,
                child: SizedBox(
                  width: 91,
                  height: 27,
                  child: Text(
                    'مدى جاهزيتك',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 148,
                top: 175,
                child: SizedBox(
                  width: 91,
                  height: 31,
                  child: Text(
                    '٪٧٠',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: 'Readex Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 19,
                child: Container(
                  width: 326,
                  height: 18,
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
                left: 48,
                top: 363,
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
                      fontWeight: FontWeight.w300,
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
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 118,
                top: 565,
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
                left: 110,
                top: 371,
                child: SizedBox(
                  width: 221,
                  height: 27,
                  child: Text(
                    'تشير المؤشرات إلى احتمال ضعف مهارات التواصل',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 179,
                top: 398,
                child: SizedBox(
                  width: 146,
                  height: 13,
                  child: Text(
                    'تدرب على مقابلات العمل لتقويتها',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 208,
                top: 480,
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
                left: 59,
                top: 457,
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
                left: 55,
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
                left: 61,
                top: 381,
                child: Container(
                  width: 31,
                  height: 25,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 59,
                top: 540,
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
                top: 616,
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
                left: 176,
                top: 627,
                child: SizedBox(
                  width: 146,
                  height: 24,
                  child: Text(
                    'المنصه الوطنية للتطوع',
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
                left: 176,
                top: 651,
                child: SizedBox(
                  width: 149,
                  height: 16,
                  child: Text(
                    'القسم التقني',
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
                top: 625,
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
                left: 172,
                top: 321,
                child: SizedBox(
                  width: 167,
                  height: 24,
                  child: Text(
                    'اقتراحاتنا لرفع جاهزيتك ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 254,
                top: 463,
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
                left: 246,
                top: 548,
                child: Container(
                  width: 34,
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
                left: 159,
                top: 634,
                child: Container(
                  width: 34,
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
                left: 252,
                top: 460,
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
                left: 250,
                top: 546,
                child: SizedBox(
                  width: 25,
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
                left: 162,
                top: 634,
                child: SizedBox(
                  width: 25,
                  height: 11,
                  child: Text(
                    'تطوع',
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/27x27"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 259,
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 784,
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
                left: 318,
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