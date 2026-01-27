//حقول ادخال البيانات في واجهه تسجيل الدخول وانشاء حساب

import 'package:flutter/material.dart';

Widget input(String label, {
  bool isPass = false, 
  bool isDrop = false, 
  String? selectedValue, 
  List<String>? items, 
  ValueChanged<String?>? onChanged,
  String? Function(String?)? validator,
}) {
  var commonBorder = (Color color, double width) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: color, width: width),
  );
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 5, right: 10),
        child: Text(label, style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280))),
      ),
      isDrop
          ? DropdownButtonFormField<String>(
              value: selectedValue,
              isExpanded: true,
              hint: const Text("اختر التخصص", style: TextStyle(fontSize: 12)),
              icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF6B7280)),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                filled: true,
                fillColor: Colors.white,
                // حدود الحالة العادية (صفراء)
                enabledBorder: commonBorder(const Color(0xFFF3E5AB), 1.2),
                focusedBorder: commonBorder(const Color(0xFFF3E5AB), 2.0),
                // حدود حالة الخطأ (حمراء)
                errorBorder: commonBorder(Colors.red, 1.2),
                focusedErrorBorder: commonBorder(Colors.red, 2.0),
                errorStyle: const TextStyle(color: Colors.red, fontSize: 11, height: 0.8),
              ),
              items: items?.map((String value) => DropdownMenuItem(
                value: value, 
                child: Text(value, style: const TextStyle(fontSize: 13))
              )).toList(),
              onChanged: onChanged,
              validator: (v) => v == null ? "الرجاء اختيار التخصص" : null,
            )
          : TextFormField(
              obscureText: isPass,
              textAlign: TextAlign.right,
              validator: validator,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                filled: true,
                fillColor: Colors.white,
                // حدود الحالة العادية (صفراء)
                enabledBorder: commonBorder(const Color(0xFFF3E5AB), 1.2),
                focusedBorder: commonBorder(const Color(0xFFF3E5AB), 2.0),
                // حدود حالة الخطأ (حمراء)
                errorBorder: commonBorder(Colors.red, 1.2),
                focusedErrorBorder: commonBorder(Colors.red, 2.0),
                errorStyle: const TextStyle(color: Colors.red, fontSize: 11, height: 0.8),
              ),
            ),
    ],
  );
}