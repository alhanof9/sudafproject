import 'package:flutter/material.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_button.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  String? selectedMajor;
  final List<String> majors = [
    'نظم المعلومات',
    'هندسة البرمجيات',
    'علوم الحاسب',
    'تقنية المعلومات'
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    
    // زدنا الارتفاع قليلاً لاستيعاب نصوص الخطأ (Validation messages)
    final double cardHeight = 645; 

    return Scaffold(
      backgroundColor: const Color(0xFFFFFBEF),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: SizedBox(
            // نضمن أن الارتفاع يغطي الشاشة أو المساحة المطلوبة للتمرير
            height: screenHeight > 900 ? screenHeight : 900, 
            child: Stack(
              children: [
                // --- زر الرجوع والعنوان ---
                Positioned(
                  top: 50, left: 10,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 20),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const Positioned(
                  top: 55, left: 0, right: 0,
                  child: Center(child: Text('انشاء حساب', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                ),

                // --- الشعار (مربوط بارتفاع الكارد) ---
                Positioned(
                  bottom: cardHeight - 118, 
                  left: 0, right: 0,
                  child: Image.asset('images/sudaf_logo.png', height: 270, width: 370, fit: BoxFit.contain),
                ),

                // --- الحاوية البيضاء مع الـ Form ---
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: cardHeight,
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70)),
                      boxShadow: [
                        BoxShadow(color: Color.fromARGB(31, 49, 49, 49), blurRadius: 20, spreadRadius: 5)
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          const Text("رجاءً ادخل المعلومات التالية.", style: TextStyle(color: Colors.grey, fontSize: 13)),
                          
                          input("اسم المستخدم", validator: (v) {
                            if (v == null || v.isEmpty) return "الرجاء إدخال اسم المستخدم";
                            return null;
                          }),

                          input("البريد الالكتروني", validator: (v) {
                            if (v == null || v.isEmpty) return "الرجاء إدخال البريد الالكتروني";
                            if (!v.contains('@')) return "صيغة البريد غير صحيحة";
                            return null;
                          }),

                          input("التخصص", 
                            isDrop: true, 
                            selectedValue: selectedMajor, 
                            items: majors, 
                            onChanged: (val) => setState(() => selectedMajor = val)
                          ),

                          input("كلمة المرور", isPass: true, validator: (v) {
                            if (v == null || v.length < 8) return "كلمة المرور قصيرة جداً (8 خانات)";
                            return null;
                          }),

                          const SizedBox(height: 25),
                          btn("التسجيل", () {
                            // التحقق الفعلي
                            if (_formKey.currentState!.validate()) {
                              if (selectedMajor == null) {
                                // تنبيه يدوي إذا لم يتم اختيار التخصص لأن Dropdown صامت أحياناً
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('الرجاء اختيار التخصص أولاً'))
                                );
                                return;
                              }
                              // تنفيذ عملية التسجيل
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('تم التحقق.. جاري التسجيل'))
                              );
                            }
                          }, width: 200),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}