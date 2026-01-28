import 'package:flutter/material.dart';
// تأكدي من صحة المسارات حسب مجلدات مشروعك
import 'package:testapp/views/pages/edit_profile.dart';
import 'package:testapp/views/pages/welcome_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // --- تعريف الألوان المستخدمة في التصميم للحفاظ على الهوية البصرية ---
    const Color goldMain = Color.fromRGBO(255, 225, 161, 1);
    const Color goldLight = Color.fromRGBO(255, 252, 240, 1);
    const Color fieldFill = Color(0x2DFFF3C2);
    const Color borderColor = Color(0xFFFEDF89);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- الجزء العلوي: الخلفية المنحنية وصورة البروفايل وأزرار التحكم ---
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none, // للسماح بصورة البروفايل بالبروز خارج الحاوية الصفراء
              children: [
                // 1. الحاوية الصفراء المنحنية (Header)
                Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: goldLight,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ],
                  ),
                ),

                // 2. أزرار التحكم (الرجوع، التعديل، تسجيل الخروج) والعنوان
                Positioned(
                  top: 60,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // زر العودة للخلف
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.arrow_back_ios_new, size: 20),
                      ),

                      // عنوان الصفحة
                      const Text(
                        'الملف الشخصي',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // عمود يحتوي على أزرار التعديل وتسجيل الخروج
                      Column(
                        children: [
                          // زر التعديل (ينقل لصفحة EditProfilePage)
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const EditProfilePage()),
                              );
                            },
                            child: _buildCircleIcon(Icons.auto_fix_high_outlined, borderColor),
                          ),
                          const SizedBox(height: 10),
                          
                          // زر تسجيل الخروج (يظهر رسالة تأكيد أولاً)
                          GestureDetector(
                            onTap: () => _showLogoutConfirmation(context),
                            child: _buildCircleIcon(Icons.logout, borderColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // 3. صورة البروفايل الدائرية المرتفعة
                Positioned(
                  bottom: -50,
                  child: Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: borderColor, width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.12),
                          blurRadius: 15,
                          spreadRadius: 2,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const ClipOval(
                      child: CircleAvatar(
                        radius: 85,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/student.jpg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60), // مسافة لتعويض بروز الصورة

            // --- معلومات الاسم والتخصص ---
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(width: 5),
                Text(
                  'AljoharhKSU',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF4F5363)),
                ),
                Icon(Icons.verified, color: goldMain, size: 18),
              ],
            ),
            const Text(
              'نظم معلومات',
              style: TextStyle(color: Color.fromARGB(255, 94, 72, 26), fontSize: 14, fontWeight: FontWeight.w500),
            ),

            const SizedBox(height: 25),

            // --- بطاقة البيانات الشخصية والإحصائيات ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 15, spreadRadius: 2)
                  ],
                ),
                child: Column(
                  children: [
                    // حقول عرض البيانات
                    _buildDataField('AljoharhKSU', Icons.person, borderColor, fieldFill),
                    _buildDataField('AljoharhKSU@gmail.com', Icons.email, borderColor, fieldFill),
                    _buildDataField('نظم المعلومات', Icons.notes, borderColor, fieldFill),

                    const SizedBox(height: 20),

                    // عرض الإحصائيات (ساعات، شهادات، دورات)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildStatItem('ساعات التطوع', '5', borderColor, fieldFill),
                        _buildStatItem('الشهادات', '5', borderColor, fieldFill),
                        _buildStatItem('الدورات', '5', borderColor, fieldFill),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // --- دالة لإظهار رسالة تأكيد تسجيل الخروج ---
  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text("تسجيل الخروج", textAlign: TextAlign.right),
          content: const Text("هل أنت متأكد من رغبتك في تسجيل الخروج؟", textAlign: TextAlign.right),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("إلغاء", style: TextStyle(color: Colors.grey)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(240, 255, 225, 161),
),
              onPressed: () {
                Navigator.pop(context); // إغلاق الرسالة
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                );
              },
              child: const Text("خروج", style: TextStyle(color: Colors.black)),
            ),
          ],
        );
      },
    );
  }

  // --- ويدجت لبناء حقول البيانات (اسم، إيميل...) ---
  Widget _buildDataField(String title, IconData icon, Color border, Color fill) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: BoxDecoration(
        color: fill,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: border),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(title, style: const TextStyle(fontSize: 14)),
          const SizedBox(width: 15),
          Icon(icon, color: const Color(0xFFC5A358), size: 22),
        ],
      ),
    );
  }

  // --- ويدجت لبناء مربعات الإحصائيات الصغيرة ---
  Widget _buildStatItem(String label, String count, Color border, Color fill) {
    return Container(
      width: 85,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: fill,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: border),
      ),
      child: Column(
        children: [
          Text(label, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(count, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  // --- ويدجت لبناء الأزرار الدائرية الصغيرة (التعديل والخروج) ---
  Widget _buildCircleIcon(IconData icon, Color border) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
        border: Border.all(color: border.withOpacity(0.5)),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Icon(icon, size: 18, color: Colors.grey[700]),
    );
  }
}