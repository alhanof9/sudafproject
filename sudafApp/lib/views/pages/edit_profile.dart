import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  // مفتاح النموذج للتحقق من الصحة
  final _formKey = GlobalKey<FormState>();

  // معرفات الحقول للتحقق في التعديل
  final TextEditingController nameController = TextEditingController(text: 'AljoharhKSU');
  final TextEditingController emailController = TextEditingController(text: 'AljoharhKSU@gmail.com');
  final TextEditingController passwordController = TextEditingController(); // تركتها فارغة ليبدأ المستخدم بإدخالها
  
  String selectedMajor = 'نظم المعلومات';

  // المتغيرات للعدادات
  int volunteerHours = 5;
  int certificatesCount = 5;
  int coursesCount = 5;

  // ألوان التصميم
  static const Color goldMain = Color.fromRGBO(255, 225, 161, 1);
  static const Color goldLight = Color.fromRGBO(255, 252, 240, 1);
  static const Color borderColor = Color(0xFFFEDF89);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // ربط الـ Form بالمفتاح
          child: Column(
            children: [
              // الجزء العلوي المنحني (Header)
              Stack(
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: goldLight,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(80),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 20,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back_ios_new, size: 20),
                        ),
                        const Text(
                          'تعديل',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 25),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // الحقول داخل Padding
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _buildLabel('اسم المستخدم'),
                    _buildTextField(
                      controller: nameController,
                      isPassword: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'يرجى إدخال اسم المستخدم';
                        // مثال لمحاكاة الخطأ في الصورة
                        if (value == "AljoharhKSU_Taken") return 'تم استخدام اسم المستخدم مسبقاً';
                        return null;
                      },
                    ),
                    
                    const SizedBox(height: 15),
                    _buildLabel('البريد الإلكتروني'),
                    _buildTextField(
                      controller: emailController,
                      isPassword: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'يرجى إدخال البريد الإلكتروني';
                        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                          return 'تم استخدام البريد من قبل أو غير صحيح';
                        }
                        return null;
                      },
                    ),
                    
                    const SizedBox(height: 15),
                    _buildLabel('التخصص'),
                    _buildDropdownField(borderColor, const Color.fromARGB(18, 157, 157, 157)),
                    
                    const SizedBox(height: 15),
                    _buildLabel('كلمة المرور'),
                    _buildTextField(
                      controller: passwordController,
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'يرجى إدخال كلمة المرور';
                        // التحقق من الطول ووجود رقم (Regex)
                        if (value.length < 8 || !RegExp(r'[0-9]').hasMatch(value)) {
                          return 'يجب أن تحتوي كلمة المرور على ٨ أحرف على الأقل، وتتضمن رقماً واحداً على الأقل';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 40),

                    // إحصائيات سريعة تفاعلية
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildMiniStat('ساعات التطوع', volunteerHours.toString(), () {
                          setState(() => volunteerHours++);
                        }),
                        _buildMiniStat('الشهادات', certificatesCount.toString(), () {
                          setState(() => certificatesCount++);
                        }),
                        _buildMiniStat('الدورات', coursesCount.toString(), () {
                          setState(() => coursesCount++);
                        }),
                      ],
                    ),

                    const SizedBox(height: 60),

                    // زر حفظ مع تفعيل التحقق
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            _showSuccessDialog();
                          }
                        },
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 225, 161),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              )
                            ],
                          ),
                          child: const Text(
                            'حفظ',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --- الميثودات المساعدة المعدلة ---

  Widget _buildTextField({
    required TextEditingController controller,
    required bool isPassword,
    required String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      textAlign: TextAlign.right,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(18, 157, 157, 157),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xFFC5A358), width: 1.5),
        ),
        // حدود الخطأ
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
        ),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 11),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, bottom: 5),
      child: Text(
        text,
        style: const TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildMiniStat(String label, String value, VoidCallback onAddTap) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 95, 
          height: 110,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: borderColor, width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                value,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10), 
            ],
          ),
        ),
        Positioned(
          bottom: -22,
          child: GestureDetector(
            onTap: onAddTap,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFCF0),
                shape: BoxShape.circle,
                border: Border.all(color: borderColor, width: 1.5),
              ),
              child: const Icon(Icons.add, size: 30, color: borderColor),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField(Color border, Color fill) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: fill,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: border),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: const Color.fromARGB(255, 255, 249, 232),
          value: selectedMajor,
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
          items: <String>['تقنية المعلومات','نظم المعلومات', 'علوم الحاسب', 'هندسة البرمجيات'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(value, style: const TextStyle(fontSize: 14)),
              ),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() => selectedMajor = newValue!);
          },
        ),
      ),
    );
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'تم تعديل البيانات بنجاح',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pop(context); 
                Navigator.pop(context); 
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(color: goldMain, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}