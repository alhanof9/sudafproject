import 'package:flutter/material.dart';

class Interview extends StatefulWidget {
  const Interview({super.key});

  @override
  State<Interview> createState() => _InterviewState();
}

class _InterviewState extends State<Interview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFFFFFBEB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(54),
            ),
          ),
          child: Stack(
            children: [
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
                left: 339,
                top: 89,
                child: Text.rich(
                  TextSpan(),
                ),
              ),
              Positioned(
                left: 330,
                top: 76,
                child: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/27x27"),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 91,
                top: 119,
                child: Text(
                  'تعليمات ماقبل المقابلة',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: -928,
                top: 55,
                child: Container(
                  width: 341,
                  height: 250,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE6E6E6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 8,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 203,
                child: Container(
                  width: 388,
                  height: 613,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFFEFC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(150),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 256,
                child: SizedBox(
                  width: 267,
                  height: 341,
                  child: Text(
                    ' مدة المقابلة 5 دقائق فقط.\nيمكنك الإجابة عن السؤال بالضغط المستمر على الزر أثناء التحدث، وإفلاته عند الانتهاء.\nحاول إجراء المقابلة في مكان هادئ لتسجيل صوت واضح.\nإذا غادرت المقابلة قبل انتهاء الوقت، فلن يتم حفظ أي إجابات.\nعند إكمال المقابلة بالكامل، يمكنك عرض النتائج في صفحة المقابلات السابقة.\n ركّز وأكمل المقابلة ضمن الوقت المحدد للحصول على أفضل تقييم.',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF101828),
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 341,
                top: 588.10,
                child: Container(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                  width: 290.10,
                  height: 32,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 72.25,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(color: const Color(0xFF8D8D8D)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 72.25,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(color: const Color(0xFF8D8D8D)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 72.25,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(color: const Color(0xFF8D8D8D)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 72.25,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(color: const Color(0xFF8D8D8D)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 347,
                top: 262,
                child: Container(
                  width: 20,
                  height: 22,
                  padding: const EdgeInsets.all(2),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF9E59E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(64),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          child: Stack(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 346,
                top: 307,
                child: Container(
                  width: 20,
                  height: 23,
                  padding: const EdgeInsets.all(2),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF9E59E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(64),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          child: Stack(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 346,
                top: 373,
                child: Container(
                  width: 20,
                  height: 22,
                  padding: const EdgeInsets.all(2),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF9E59E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(64),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          child: Stack(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 346,
                top: 433,
                child: Container(
                  width: 20,
                  height: 22,
                  padding: const EdgeInsets.all(2),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF9E59E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(64),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          child: Stack(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 346,
                top: 494,
                child: Container(
                  width: 20,
                  height: 21,
                  padding: const EdgeInsets.all(2),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF9E59E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(64),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          child: Stack(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 347,
                top: 549,
                child: Container(
                  width: 20,
                  height: 22,
                  padding: const EdgeInsets.all(2),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF9E59E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(64),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          child: Stack(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 121,
                top: 633,
                child: Container(
                  width: 144,
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
                    spacing: 10,
                    children: [
                      Text(
                        'بدء المقابلة',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.25,
                          letterSpacing: 0.10,
                        ),
                      ),
                    ],
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
                top: 776,
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
                top: 783,
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
                top: 783,
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
                top: 783,
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