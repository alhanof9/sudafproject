import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
                left: 3,
                top: -85,
                child: Container(
                  width: 391,
                  height: 286,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFFCF5) /* Color-Yellow-Yellow-25 */,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(53),
                        topRight: Radius.circular(55),
                        bottomLeft: Radius.circular(90),
                        bottomRight: Radius.circular(89),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 5,
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
                left: 19,
                top: 224,
                child: Opacity(
                  opacity: 0.50,
                  child: Container(
                    width: 351,
                    height: 71,
                    decoration: ShapeDecoration(
                      color: const Color(0x68FEEFC7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 7,
                          offset: Offset(0, 1),
                          spreadRadius: 2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 322,
                child: Opacity(
                  opacity: 0.50,
                  child: Container(
                    width: 351,
                    height: 72,
                    decoration: ShapeDecoration(
                      color: const Color(0x68FEEFC7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 7,
                          offset: Offset(0, 1),
                          spreadRadius: 2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 424,
                child: Opacity(
                  opacity: 0.50,
                  child: Container(
                    width: 351,
                    height: 71,
                    decoration: ShapeDecoration(
                      color: const Color(0x68FEEFC7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 7,
                          offset: Offset(0, 1),
                          spreadRadius: 2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 524,
                child: Opacity(
                  opacity: 0.50,
                  child: Container(
                    width: 351,
                    height: 71,
                    decoration: ShapeDecoration(
                      color: const Color(0x68FEEFC7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 7,
                          offset: Offset(0, 1),
                          spreadRadius: 2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 626,
                child: Opacity(
                  opacity: 0.50,
                  child: Container(
                    width: 351,
                    height: 71,
                    decoration: ShapeDecoration(
                      color: const Color(0x68FEEFC7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 7,
                          offset: Offset(0, 1),
                          spreadRadius: 2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 216,
                top: 568,
                child: SizedBox(
                  width: 82,
                  height: 11,
                  child: Text(
                    'تدرب اكثر',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFFF85454),
                      fontSize: 12,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 338,
                top: 61,
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
                left: 315,
                top: 235,
                child: Container(
                  width: 45,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: const Color(0x60FEDF89),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 315,
                top: 335,
                child: Container(
                  width: 45,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: const Color(0x60FEDF89),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 315,
                top: 437,
                child: Container(
                  width: 45,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: const Color(0x60FEDF89),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 319,
                top: 640,
                child: Container(
                  width: 45,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: const Color(0x60FEDF89),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 319,
                top: 535,
                child: Container(
                  width: 45,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: const Color(0x60FEDF89),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 334,
                top: 242,
                child: SizedBox(
                  width: 8,
                  height: 39,
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: const Color(0xFFFEC84B),
                      fontSize: 20,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 334,
                top: 342,
                child: SizedBox(
                  width: 8,
                  height: 39,
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: const Color(0xFFFEC84B),
                      fontSize: 20,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 334,
                top: 444,
                child: SizedBox(
                  width: 8,
                  height: 39,
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: const Color(0xFFFEC84B),
                      fontSize: 20,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 335,
                top: 542,
                child: SizedBox(
                  width: 8,
                  height: 39,
                  child: Text(
                    '4',
                    style: TextStyle(
                      color: const Color(0xFFFEC84B),
                      fontSize: 20,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 337,
                top: 648,
                child: SizedBox(
                  width: 8,
                  height: 39,
                  child: Text(
                    '5',
                    style: TextStyle(
                      color: const Color(0xFFFEC84B),
                      fontSize: 20,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 218,
                top: 239,
                child: SizedBox(
                  width: 80,
                  height: 16,
                  child: Text(
                    'المقابلة ١',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Zen Old Mincho',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 218,
                top: 337,
                child: SizedBox(
                  width: 80,
                  height: 16,
                  child: Text(
                    'المقابلة ٢',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Zen Old Mincho',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 218,
                top: 439,
                child: SizedBox(
                  width: 80,
                  height: 16,
                  child: Text(
                    'المقابلة ٣',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Zen Old Mincho',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 218,
                top: 540,
                child: SizedBox(
                  width: 80,
                  height: 16,
                  child: Text(
                    'المقابلة ٤',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Zen Old Mincho',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 218,
                top: 640,
                child: SizedBox(
                  width: 80,
                  height: 16,
                  child: Text(
                    'المقابلة ٥',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Zen Old Mincho',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 216,
                top: 269,
                child: SizedBox(
                  width: 82,
                  height: 11,
                  child: Text(
                    'ناجحة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xF219B36E),
                      fontSize: 12,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 216,
                top: 667,
                child: SizedBox(
                  width: 82,
                  height: 11,
                  child: Text(
                    'ناجحة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xF219B36E),
                      fontSize: 12,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 229,
                top: 266,
                child: Container(
                  width: 29,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: const Color(0x3319B36E),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFF86D7B3),
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 233,
                top: 663,
                child: Container(
                  width: 29,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: const Color(0x3319B36E),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFF86D7B3),
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 231,
                top: 464,
                child: Container(
                  width: 29,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: const Color(0x3319B36E),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFF86D7B3),
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 215,
                top: 565,
                child: Container(
                  width: 29,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: const Color(0x56FF3939),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x5EF85454),
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 231,
                top: 269,
                child: SizedBox(
                  width: 25,
                  height: 11,
                  child: Text(
                    '5/4',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF616161),
                      fontSize: 10,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 213,
                top: 361,
                child: Container(
                  width: 29,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: const Color(0x56FF3939),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x5EF85454),
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 215,
                top: 364,
                child: SizedBox(
                  width: 25,
                  height: 11,
                  child: Text(
                    '5/1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF616161),
                      fontSize: 10,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 216,
                top: 466,
                child: SizedBox(
                  width: 82,
                  height: 11,
                  child: Text(
                    'ناجحة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xF219B36E),
                      fontSize: 12,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 216,
                top: 364,
                child: SizedBox(
                  width: 82,
                  height: 11,
                  child: Text(
                    'تدرب اكثر',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFFF85454),
                      fontSize: 12,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 106,
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
                      fontWeight: FontWeight.w700,
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
              Positioned(
                left: 233,
                top: 467,
                child: SizedBox(
                  width: 25,
                  height: 11,
                  child: Text(
                    '5/3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF616161),
                      fontSize: 10,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 217,
                top: 568,
                child: SizedBox(
                  width: 25,
                  height: 11,
                  child: Text(
                    '5/2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF616161),
                      fontSize: 10,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 235,
                top: 666,
                child: SizedBox(
                  width: 25,
                  height: 11,
                  child: Text(
                    '5/5',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF616161),
                      fontSize: 10,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
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