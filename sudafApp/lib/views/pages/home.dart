import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/views/pages/profile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // ميثود لفتح الروابط
  Future<void> _openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // الخلفية بيضاء كما في الصورة
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ===== الجزء العلوي المنحني (Header) =====
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                // الخلفية البيج المنحنية
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFCF0), // لون بيج فاتح
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,      // لون الظل (شفاف خفيف)
                      blurRadius: 15.0,           // مدى انتشار الظل
                      spreadRadius: 1.0,          // مدى توسع الظل
                      offset: Offset(0, 8),       // إزاحة الظل للأسفل (X=0, Y=8)
                    ),
                  ],
                ),
              ),
              Positioned(// أيقونة البروفايل
              top: 50,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfilePage()),
                  );
                },
                child: const CircleAvatar(
                  radius: 28,
                  backgroundColor: Color.fromARGB(0, 253, 255, 225),
                  child: FaIcon(
                    FontAwesomeIcons.userGraduate, // أيقونة الخريج
                    size: 28,
                    color: Color.fromARGB(255, 96, 96, 96),
                  ),
                ),
              ),
            ),
                // الاسم والأيقونة
                Positioned(
                  top: 60,
                  left: 30,
                  right: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      SizedBox(width: 10),
                      Text(
                        "أهلاً Aljohara",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Tajawal', // يفضل استخدام خط عربي
                        ),
                      ),
                    ],
                  ),
                ),
                // دائرة النسبة المئوية (نصفها داخل المنحنى ونصفها خارجه)
                Positioned(
                  bottom: -23, 
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        )
                      ],
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 130,
                          height: 130,
                          child: CircularProgressIndicator(
                            value: 0.70, // النسبة 70%
                            strokeWidth: 15,
                            backgroundColor: const Color(0xFFFFF4D8),
                            valueColor: const AlwaysStoppedAnimation(Color(0xFFFFD571)),
                            strokeCap: StrokeCap.round,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              "%٧٠",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "مدى جاهزيتك",
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30), // مسافة لتعويض بروز الدائرة

            /// ===== قائمة الاقتراحات =====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "اقتراحاتنا لرفع جاهزيتك",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                    
                _buildAlertCard(),
                const SizedBox(height: 15),
                    
                _buildActionCard(
                  title: "Python Programming",
                  subtitle: "دروب",
                  tag: "دورة",
                  url: "https://www.doroob.sa",
                ),
                _buildActionCard(
                  title: "Cisco Certified Network Associate (CCNA)",
                  subtitle: "Cisco",
                  tag: "شهادة",
                  url: "https://www.cisco.com",
                ),
                _buildActionCard(
                  title: "القسم التقني",
                  subtitle: "المنصة الوطنية للتطوع",
                  tag: "تطوع",
                  url: "https://nvg.gov.sa",
                ),
              ],
            ),
          ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // كرت التنبيه العلوي
  Widget _buildAlertCard() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFDF6),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFFEDF89), width: 1.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "تشير المؤشرات إلى احتمال ضعف مهارات التواصل",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
                Text(
                  "تدرب على مقابلات العمل لتقويتها",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          const Icon(Icons.tune, color: Color(0xFFFEDF89), size: 30),
        ],
      ),
    );
  }

  // كروت الأكشن (دروب، سيسكو، تطوع)
  Widget _buildActionCard({
    required String title,
    required String subtitle,
    required String tag,
    required String url,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFDF6),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFFEDF89).withOpacity(0.5)),
      ),
      child: Row(
        children: [
          // أيقونة السهم القابلة للضغط
          GestureDetector(
            onTap: () => _openUrl(url),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFFEDF89)),
              ),
              child: const Icon(Icons.arrow_back_ios_new, size: 16, color: Color(0xFFFEDF89)),
            ),
          ),
          const Spacer(),
          // النصوص والتاج
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF4D8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(tag, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width: 8),
                  Text(subtitle, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                ],
              ),
              const SizedBox(height: 4),
              Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}