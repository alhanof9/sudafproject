
import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                left: 0,
                top: -26,
                child: Container(
                  width: 391,
                  height: 291,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFFCF5) /* Color-Yellow-Yellow-25 */,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.white),
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
                left: 130,
                top: 63,
                child: SizedBox(
                  width: 131,
                  height: 33,
                  child: Text(
                    'الملف الشخصي',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Mulish',
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
                left: 111,
                top: 116,
                child: Container(
                  width: 173,
                  height: 168,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 2,
                        color: const Color(0xFFFEDF89),
                      ),
                    ),
                    shadows: [
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
                left: 340,
                top: 44,
                child: Container(width: 27, height: 27),
              ),
              Positioned(
                left: 140,
                top: 832,
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
                left: 23,
                top: 358,
                child: Container(
                  width: 347,
                  height: 357,
                  decoration: ShapeDecoration(
                    color: const Color(0x7CFCFCFC),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x00FFCF7D),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(38),
                        topRight: Radius.circular(38),
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 3,
                        offset: Offset(0, 0),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 127,
                top: 301,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 4,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Text(
                        'AljoharhKSU',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF4F5363),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.11,
                        ),
                      ),
                    ),
                    Container(width: 20, height: 20, child: Stack()),
                  ],
                ),
              ),
              Positioned(
                left: 162,
                top: 326,
                child: Text(
                  'نظم معلومات',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF725C13),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 145,
                top: 149,
                child: Opacity(
                  opacity: 0.80,
                  child: Container(
                    width: 104,
                    height: 105,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://placehold.co/104x105"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 470,
                child: Container(
                  width: 311,
                  height: 51,
                  decoration: ShapeDecoration(
                    color: const Color(0x2DFFF3C2),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 317,
                top: 484,
                child: Container(width: 23, height: 23, child: Stack()),
              ),
              Positioned(
                left: 174,
                top: 485,
                child: Container(
                  width: 131,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 8,
                    children: [
                      SizedBox(
                        width: 131,
                        child: Text(
                          'AljoharhKSU@gmail.com',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 538,
                child: Container(
                  width: 311,
                  height: 51,
                  decoration: ShapeDecoration(
                    color: const Color(0x2DFFF3C2),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 231,
                top: 555,
                child: Container(
                  width: 76,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 8,
                    children: [
                      SizedBox(
                        width: 76,
                        child: Text(
                          'نظم المعلومات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 41,
                top: 398,
                child: Container(
                  width: 310,
                  height: 51,
                  decoration: ShapeDecoration(
                    color: const Color(0x2DFFF3C2),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 229,
                top: 413,
                child: Container(
                  width: 78,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 8,
                    children: [
                      SizedBox(
                        width: 78,
                        child: Text(
                          'AljoharhKSU',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 614,
                child: Container(
                  width: 94,
                  height: 62,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0x2DFFF3C2),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      SizedBox(
                        width: 102,
                        child: Text(
                          'ساعات التطوع',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: const Color(0xFF0B0B0B),
                            fontSize: 14,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                            height: 0.57,
                          ),
                        ),
                      ),
                      Text(
                        '5',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF0B0B0B),
                          fontSize: 14,
                          fontFamily: 'Roboto Flex',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 151,
                top: 615,
                child: Container(
                  width: 94,
                  height: 62,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0x2DFFF3C2),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      SizedBox(
                        width: 74,
                        child: Text(
                          'الشهادات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: const Color(0xFF0B0B0B),
                            fontSize: 14,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                            height: 0.57,
                          ),
                        ),
                      ),
                      Text(
                        '5',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF0B0B0B),
                          fontSize: 14,
                          fontFamily: 'Roboto Flex',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 259,
                top: 614,
                child: Container(
                  width: 94,
                  height: 63,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0x2DFFF3C2),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFFEDF89),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      SizedBox(
                        width: 46,
                        child: Text(
                          'الدورات',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF101828) /* Color-Gray-Gray-900 */,
                            fontSize: 14,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                            height: 0.29,
                          ),
                        ),
                      ),
                      Text(
                        '5',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF0B0B0B),
                          fontSize: 14,
                          fontFamily: 'Roboto Flex',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 317,
                top: 410,
                child: Container(width: 23, height: 24, child: Stack()),
              ),
              Positioned(
                left: 340,
                top: 575,
                child: Container(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  width: 23,
                  height: 23,
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 322,
                top: 115,
                child: Container(
                  width: 45,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white.withValues(alpha: 0.14),
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
                        blurRadius: 7,
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
                      Text.rich(
                        TextSpan(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 321,
                top: 58,
                child: Container(
                  width: 45,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white.withValues(alpha: 0.14),
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
                        blurRadius: 7,
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
                      Text.rich(
                        TextSpan(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 329,
                top: 65,
                child: Container(width: 30, height: 30, child: Stack()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
