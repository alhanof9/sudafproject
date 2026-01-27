//الازرار المستخدمه في واجهه البداية وتسجيل الدخول وانشاء حساب

import 'package:flutter/material.dart';

Widget btn(String txt, VoidCallback onPressed, {double width = 250}) {
  return Container(
    width: width,
    height: 52, // الطول المناسب كما في الصورة
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30), // زوايا مستديرة جداً
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1), // ظل خفيف جداً
          blurRadius: 1,
          offset: const Offset(0, 2), // إزاحة الظل للأسفل
        ),
      ],
    ),
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFEF3C7), // اللون الأصفر الفاتح من الصورة
        foregroundColor: const Color(0xFF374151), // لون النص (رمادي غامق)
        elevation: 0, // نلغي الارتفاع الافتراضي لنعتمد على boxShadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        txt,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'Tajawal', // تأكد من إضافة الخط العربي لمشروعك
        ),
      ),
    ),
  );
}

