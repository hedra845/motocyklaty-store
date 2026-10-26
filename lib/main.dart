// import 'package:flutter/material.dart';

// void main() => runApp(const MotoCyklyatApp());

// class MotoCyklyatApp extends StatelessWidget {
//   const MotoCyklyatApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: null,
//         useMaterial3: true,
//         scaffoldBackgroundColor: const Color(0xFFF6F7FB),
//       ),
//       home: const ContactScreen(),
//     );
//   }
// }

// class ContactScreen extends StatefulWidget {
//   const ContactScreen({super.key});

//   @override
//   State<ContactScreen> createState() => _ContactScreenState();
// }

// class _ContactScreenState extends State<ContactScreen> {
//   final _name = TextEditingController();
//   final _phone = TextEditingController();
//   final _address = TextEditingController();
//   final _desc = TextEditingController();

//   @override
//   void dispose() {
//     _name.dispose();
//     _phone.dispose();
//     _address.dispose();
//     _desc.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     const primaryBlue = Color(0xFF1E5AA8);
//     const borderBlue = Color(0xFFBBD3F3);
//     const yellow = Color(0xFFF3B51B);

//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           surfaceTintColor: Colors.white,
//           elevation: 0,
//           leading: IconButton(
//             icon: const Icon(Icons.menu, color: primaryBlue),
//             onPressed: () {},
//           ),
//           title: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: const [
//               // Replace with Image.asset(...) if you have the logo
//               Text(
//                 "موتوسيكلاتّي",
//                 style: TextStyle(
//                   color: primaryBlue,
//                   fontWeight: FontWeight.w800,
//                   fontSize: 18,
//                 ),
//               ),
//               SizedBox(width: 6),
//               Icon(Icons.motorcycle, color: yellow),
//             ],
//           ),
//           centerTitle: true,
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.chat_bubble_outline, color: primaryBlue),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         body: SafeArea(
//           child: LayoutBuilder(
//             builder: (context, constraints) {
//               final cardWidth = constraints.maxWidth > 460
//                   ? 420.0
//                   : (constraints.maxWidth - 24).clamp(280.0, 420.0);

//               return SingleChildScrollView(
//                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//                 child: Column(
//                   children: [
//                     const SizedBox(height: 6),
//                     const Text(
//                       "اتصل بنا",
//                       style: TextStyle(
//                         color: primaryBlue,
//                         fontSize: 28,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     const Text(
//                       "يرجى العلم بوجود مشكلة أو أرجو المساعدة في حلها.",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Color(0xFF8A94A6),
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     const SizedBox(height: 14),

//                     Center(
//                       child: Container(
//                         width: cardWidth,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(18),
//                           boxShadow: const [
//                             BoxShadow(
//                               color: Color(0x14000000),
//                               blurRadius: 18,
//                               offset: Offset(0, 10),
//                             )
//                           ],
//                         ),
//                         padding: const EdgeInsets.all(14),
//                         child: Column(
//                           children: [
//                             _InputField(
//                               controller: _name,
//                               hint: "الاسم",
//                               icon: Icons.person_outline,
//                               borderColor: borderBlue,
//                               iconColor: primaryBlue,
//                             ),
//                             const SizedBox(height: 10),
//                             _InputField(
//                               controller: _phone,
//                               hint: "رقم الهاتف",
//                               icon: Icons.phone_outlined,
//                               keyboardType: TextInputType.phone,
//                               borderColor: borderBlue,
//                               iconColor: primaryBlue,
//                             ),
//                             const SizedBox(height: 10),
//                             _InputField(
//                               controller: _address,
//                               hint: "العنوان",
//                               icon: Icons.location_on_outlined,
//                               borderColor: borderBlue,
//                               iconColor: primaryBlue,
//                             ),
//                             const SizedBox(height: 12),

//                             // Image upload box
//                             Align(
//                               alignment: Alignment.centerRight,
//                               child: Text(
//                                 "صورة المشكلة",
//                                 style: TextStyle(
//                                   color: Colors.grey.shade700,
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 8),
//                             InkWell(
//                               onTap: () {
//                                 // TODO: pick image (image_picker)
//                               },
//                               borderRadius: BorderRadius.circular(16),
//                               child: Container(
//                                 height: 140,
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(16),
//                                   border: Border.all(color: borderBlue, width: 1.4),
//                                   color: const Color(0xFFF9FBFF),
//                                 ),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: const [
//                                     CircleAvatar(
//                                       radius: 22,
//                                       backgroundColor: Color(0xFFEAF2FF),
//                                       child: Icon(Icons.add, color: primaryBlue, size: 26),
//                                     ),
//                                     SizedBox(height: 10),
//                                     Text(
//                                       "قم بإرفاق صورة المشكلة",
//                                       style: TextStyle(
//                                         color: Color(0xFF6A768E),
//                                         fontWeight: FontWeight.w700,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),

//                             const SizedBox(height: 12),

//                             // Description
//                             _DescField(
//                               controller: _desc,
//                               hint: "يرجى وصف المشكلة...",
//                               borderColor: borderBlue,
//                             ),

//                             const SizedBox(height: 14),

//                             // Submit button
//                             SizedBox(
//                               width: double.infinity,
//                               height: 50,
//                               child: ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: yellow,
//                                   foregroundColor: Colors.white,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(14),
//                                   ),
//                                   elevation: 0,
//                                 ),
//                                 onPressed: () {
//                                   // TODO: submit
//                                 },
//                                 child: const Text(
//                                   "إرسال المشكلة",
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w800,
//                                   ),
//                                 ),
//                               ),
//                             ),

//                             const SizedBox(height: 12),

//                             // Quick call
//                             SizedBox(
//                               width: double.infinity,
//                               height: 52,
//                               child: ElevatedButton.icon(
//                                 icon: const Icon(Icons.call, color: Colors.white),
//                                 label: const Text(
//                                   "اتصال سريع",
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w800,
//                                   ),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: primaryBlue,
//                                   foregroundColor: Colors.white,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(14),
//                                   ),
//                                   elevation: 0,
//                                 ),
//                                 onPressed: () {
//                                   // TODO: launch tel:
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),

//                     const SizedBox(height: 16),

//                     // Footer text
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 18),
//                       child: Column(
//                         children: const [
//                           Text(
//                             "نحن معرض موتوسيكلاتّي متخصص في بيع أحدث الموتوسيكلات، نوفر أفضل الموديلات بأسعار تنافسية مع ضمان الجودة وخدمة ما بعد البيع.",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Color(0xFF6C7688),
//                               fontSize: 12.5,
//                               fontWeight: FontWeight.w600,
//                               height: 1.4,
//                             ),
//                           ),
//                           SizedBox(height: 8),
//                           Text(
//                             "@2026 motocyklaty.store",
//                             style: TextStyle(
//                               color: Color(0xFF7B8598),
//                               fontSize: 12.5,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _InputField extends StatelessWidget {
//   final TextEditingController controller;
//   final String hint;
//   final IconData icon;
//   final Color borderColor;
//   final Color iconColor;
//   final TextInputType? keyboardType;

//   const _InputField({
//     required this.controller,
//     required this.hint,
//     required this.icon,
//     required this.borderColor,
//     required this.iconColor,
//     this.keyboardType,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       keyboardType: keyboardType,
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         hintText: hint,
//         hintStyle: const TextStyle(fontWeight: FontWeight.w600),
//         filled: true,
//         fillColor: Colors.white,
//         contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
//         suffixIcon: Padding(
//           padding: const EdgeInsetsDirectional.only(end: 8),
//           child: CircleAvatar(
//             backgroundColor: const Color(0xFFEAF2FF),
//             child: Icon(icon, color: iconColor, size: 22),
//           ),
//         ),
//         suffixIconConstraints: const BoxConstraints(minWidth: 56, minHeight: 44),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(14),
//           borderSide: BorderSide(color: borderColor, width: 1.4),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(14),
//           borderSide: BorderSide(color: borderColor, width: 1.8),
//         ),
//       ),
//     );
//   }
// }

// class _DescField extends StatelessWidget {
//   final TextEditingController controller;
//   final String hint;
//   final Color borderColor;

//   const _DescField({
//     required this.controller,
//     required this.hint,
//     required this.borderColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         TextField(
//           controller: controller,
//           maxLines: 4,
//           decoration: InputDecoration(
//             hintText: hint,
//             hintStyle: const TextStyle(fontWeight: FontWeight.w600),
//             filled: true,
//             fillColor: Colors.white,
//             contentPadding: const EdgeInsets.fromLTRB(14, 14, 14, 28),
//             prefixIcon: const Padding(
//               padding: EdgeInsetsDirectional.only(start: 10, top: 10),
//               child: Icon(Icons.edit_outlined, color: Color(0xFF1E5AA8)),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(14),
//               borderSide: BorderSide(color: borderColor, width: 1.4),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(14),
//               borderSide: BorderSide(color: borderColor, width: 1.8),
//             ),
//           ),
//         ),
//         PositionedDirectional(
//           bottom: 8,
//           start: 12,
//           child: Text(
//             "0/0 كلمة",
//             style: TextStyle(
//               color: Colors.grey.shade500,
//               fontWeight: FontWeight.w700,
//               fontSize: 11,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(const MotoCyklyatyApp());

class MotoCyklyatyApp extends StatelessWidget {
  const MotoCyklyatyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF6F7FB),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Colors close to the shown UI
  static const primaryBlue = Color(0xFF1E5AA8);
  static const darkBlue = Color(0xFF0F3E7A);
  static const borderBlue = Color(0xFFBBD3F3);
  static const yellow = Color(0xFFF3B51B);

  final _brand = ValueNotifier<String?>("اختر");
  final _installment = ValueNotifier<String?>("اختر");
  final _downPayment = TextEditingController();
  final _months = TextEditingController();

  final _search = TextEditingController();

  final _pageCtrl = PageController(viewportFraction: 0.92);

  @override
  void dispose() {
    _downPayment.dispose();
    _months.dispose();
    _search.dispose();
    _pageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: _TopBar(
          onMenu: () {},
          onChat: () {},
          onLogin: () {},
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(14, 12, 14, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _SearchBar(controller: _search),
                const SizedBox(height: 12),

                // "احسب قسط نكنتك" card
                _CalculatorCard(
                  brand: _brand,
                  installment: _installment,
                  downPayment: _downPayment,
                  months: _months,
                  onCalculate: () {},
                ),

                const SizedBox(height: 12),

                // Features row (ضمان وجودة / تقسيط / صيانة)
                _SectionTitle(
                  title: "مميزات موتوسيكلاتّي",
                  subtitle: "الاختيار الأمثل لكل طريق",
                ),
                const SizedBox(height: 10),
                const _FeaturesRow(),

                const SizedBox(height: 14),

                // Hero banner with motorcycle + arrows
                _HeroBanner(
                  pageController: _pageCtrl,
                  items: const [
                    _HeroItem(
                      title: "العروض الخاصة",
                      priceText: "86000 جنيه",
                      model: "250F",
                      imageUrl:
                          "https://images.unsplash.com/photo-1609630875171-b1321377ee65?auto=format&fit=crop&w=1400&q=80",
                    ),
                    _HeroItem(
                      title: "Fre sh vib e s .",
                      priceText: "خصم 20%",
                      model: "Sporty",
                      imageUrl:
                          "https://images.unsplash.com/photo-1517940310602-26535839fe84?auto=format&fit=crop&w=1400&q=80",
                    ),
                  ],
                ),

                const SizedBox(height: 14),

                // Offers of the day
                _SectionTitle(
                  title: "عروض اليوم",
                  subtitle: "أفضل الأسعار على أحدث الموتوسيكلات... الفرصة متتعوضش!",
                ),
                const SizedBox(height: 10),
                _HorizontalOffers(
                  offers: const [
                    _OfferCardData(
                      badge: "20%",
                      title: "نجوه 250F",
                      price: "85146",
                    ),
                    _OfferCardData(
                      badge: "20%",
                      title: "نجوه 250F",
                      price: "85146",
                    ),
                    _OfferCardData(
                      badge: "20%",
                      title: "نجوه 250F",
                      price: "85146",
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Products grid section
                _SectionTitle(
                  title: "موتوسيكلاتّي",
                  subtitle: "اختار... ابحث عن الموديلات اللي تريدها",
                ),
                const SizedBox(height: 10),
                _ChipFilters(
                  chips: const ["الكل", "صيني", "هندي", "ياباني", "مستعمل"],
                  onTap: (_) {},
                ),
                const SizedBox(height: 10),
                _ProductsGrid(
                  products: List.generate(
                    6,
                    (i) => _ProductData(
                      title: "2016 Mercedes-",
                      subtitle: "100 mi 250CC 18/26",
                      price: "\$35 000",
                      imageUrl:
                          "https://images.unsplash.com/photo-1558980664-10e7170a99a9?auto=format&fit=crop&w=1200&q=80",
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Galleries / exhibitions
                _SectionTitle(
                  title: "المعارض والأخبار",
                  subtitle: "تابع أحدث الفعاليات والعروض",
                ),
                const SizedBox(height: 10),
                _GalleryRow(
                  items: const [
                    _GalleryItem(
                      title: "معرض اليوم",
                      imageUrl:
                          "https://images.unsplash.com/photo-1504215680853-026ed2a45def?auto=format&fit=crop&w=1200&q=80",
                    ),
                    _GalleryItem(
                      title: "تجربة قيادة",
                      imageUrl:
                          "https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?auto=format&fit=crop&w=1200&q=80",
                    ),
                    _GalleryItem(
                      title: "أحدث موديلات",
                      imageUrl:
                          "https://images.unsplash.com/photo-1520052205864-92d242b3a76b?auto=format&fit=crop&w=1200&q=80",
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Brands strip
                _SectionTitle(title: "أشهر الماركات", subtitle: ""),
                const SizedBox(height: 10),
                const _BrandsStrip(),

                const SizedBox(height: 18),

                // FAQ
                _SectionTitle(
                  title: "الأسئلة الشائعة",
                  subtitle:
                      "جمعنالك أكتر الأسئلة اللي بتوصلنا مع إجاباتها عشان نوفر عليك وقتك.",
                ),
                const SizedBox(height: 10),
                const _FaqList(),

                const SizedBox(height: 18),

                // Footer
                _Footer(
                  onSupport: () {},
                  onContact: () {
                    // TODO: navigate to contact page you made
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// TOP BAR
/// ─────────────────────────────────────────────────────────────────────────
class _TopBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onMenu;
  final VoidCallback onChat;
  final VoidCallback onLogin;

  const _TopBar({
    required this.onMenu,
    required this.onChat,
    required this.onLogin,
  });

  static const primaryBlue = Color(0xFF1E5AA8);
  static const yellow = Color(0xFFF3B51B);

  @override
  Size get preferredSize => const Size.fromHeight(58);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: primaryBlue),
        onPressed: onMenu,
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "موتوسيكلاتّي",
            style: TextStyle(
              color: primaryBlue,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          SizedBox(width: 6),
          Icon(Icons.motorcycle, color: yellow),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.chat_bubble_outline, color: primaryBlue),
          onPressed: onChat,
        ),
        TextButton(
          onPressed: onLogin,
          child: const Text(
            "تسجيل الدخول",
            style: TextStyle(
              color: primaryBlue,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// SEARCH
/// ─────────────────────────────────────────────────────────────────────────
class _SearchBar extends StatelessWidget {
  final TextEditingController controller;

  const _SearchBar({required this.controller});

  static const borderBlue = Color(0xFFBBD3F3);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderBlue, width: 1.2),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 18,
            offset: Offset(0, 10),
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        children: [
          const Icon(Icons.search, color: Color(0xFF6C7688)),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "ابحث عن الموديلات اللي تريدها...",
                hintStyle: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              color: Color(0xFFEAF2FF),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.tune, color: Color(0xFF1E5AA8)),
          ),
        ],
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// SECTION TITLE
/// ─────────────────────────────────────────────────────────────────────────
class _SectionTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const _SectionTitle({required this.title, required this.subtitle});

  static const primaryBlue = Color(0xFF1E5AA8);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: primaryBlue,
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        if (subtitle.trim().isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              color: Color(0xFF8A94A6),
              fontSize: 12.8,
              fontWeight: FontWeight.w700,
              height: 1.35,
            ),
          ),
        ],
      ],
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// CALCULATOR CARD (احسب قسط نكنتك)
/// ─────────────────────────────────────────────────────────────────────────
class _CalculatorCard extends StatelessWidget {
  final ValueNotifier<String?> brand;
  final ValueNotifier<String?> installment;
  final TextEditingController downPayment;
  final TextEditingController months;
  final VoidCallback onCalculate;

  const _CalculatorCard({
    required this.brand,
    required this.installment,
    required this.downPayment,
    required this.months,
    required this.onCalculate,
  });

  static const borderBlue = Color(0xFFBBD3F3);
  static const primaryBlue = Color(0xFF1E5AA8);
  static const darkBlue = Color(0xFF0F3E7A);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: borderBlue, width: 1.2),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 18,
            offset: Offset(0, 10),
          )
        ],
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "احسب قسط نكنتك",
            style: TextStyle(
              color: primaryBlue,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _DropField(
                  label: "ماركة النكنة",
                  value: brand,
                  items: const ["اختر", "Bajaj", "TVS", "Benelli", "Honda"],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _DropField(
                  label: "نظام التقسيط",
                  value: installment,
                  items: const ["اختر", "6 شهور", "12 شهر", "24 شهر", "36 شهر"],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _TextFieldBox(
                  label: "المقدم",
                  controller: downPayment,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _TextFieldBox(
                  label: "عدد الشهور",
                  controller: months,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: darkBlue,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: onCalculate,
              child: const Text(
                "استعلام",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _DropField extends StatelessWidget {
  final String label;
  final ValueNotifier<String?> value;
  final List<String> items;

  const _DropField({
    required this.label,
    required this.value,
    required this.items,
  });

  static const borderBlue = Color(0xFFBBD3F3);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?>(
      valueListenable: value,
      builder: (_, v, __) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFFF9FBFF),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: borderBlue, width: 1.2),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: v ?? items.first,
              isExpanded: true,
              hint: Text(label),
              items: items
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: const TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ))
                  .toList(),
              onChanged: (nv) => value.value = nv,
            ),
          ),
        );
      },
    );
  }
}

class _TextFieldBox extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const _TextFieldBox({
    required this.label,
    required this.controller,
    required this.keyboardType,
  });

  static const borderBlue = Color(0xFFBBD3F3);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(fontWeight: FontWeight.w800),
        filled: true,
        fillColor: const Color(0xFFF9FBFF),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: borderBlue, width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: borderBlue, width: 1.8),
        ),
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// FEATURES ROW
/// ─────────────────────────────────────────────────────────────────────────
class _FeaturesRow extends StatelessWidget {
  const _FeaturesRow();

  static const borderBlue = Color(0xFFBBD3F3);
  static const primaryBlue = Color(0xFF1E5AA8);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: _FeatureCard(
            icon: Icons.verified_outlined,
            title: "ضمان وجودة",
            desc: "ضمان رسمي ضد عيوب الصناعة مع ضمان على قطع الغيار الأصلية",
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: _FeatureCard(
            icon: Icons.payments_outlined,
            title: "تقسيط مرن",
            desc: "اختار نظام الدفع اللي يناسبك سواء كاش أو تقسيط بدون تعقيد",
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: _FeatureCard(
            icon: Icons.build_outlined,
            title: "صيانة متميزة",
            desc: "فريق متخصص وخدمة ما بعد البيع لضمان استمرار الأداء بكفاءة",
          ),
        ),
      ],
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;

  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.desc,
  });

  static const borderBlue = Color(0xFFBBD3F3);
  static const primaryBlue = Color(0xFF1E5AA8);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: borderBlue, width: 1.2),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 18,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: const Color(0xFFEAF2FF),
            child: Icon(icon, color: primaryBlue, size: 20),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: primaryBlue,
              fontWeight: FontWeight.w900,
              fontSize: 13.5,
            ),
          ),
          const SizedBox(height: 6),
          Expanded(
            child: Text(
              desc,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color(0xFF6C7688),
                fontWeight: FontWeight.w700,
                fontSize: 11.5,
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// HERO (banner slider)
/// ─────────────────────────────────────────────────────────────────────────
class _HeroItem {
  final String title;
  final String priceText;
  final String model;
  final String imageUrl;

  const _HeroItem({
    required this.title,
    required this.priceText,
    required this.model,
    required this.imageUrl,
  });
}

class _HeroBanner extends StatelessWidget {
  final PageController pageController;
  final List<_HeroItem> items;

  const _HeroBanner({
    required this.pageController,
    required this.items,
  });

  static const primaryBlue = Color(0xFF1E5AA8);
  static const darkBlue = Color(0xFF0F3E7A);
  static const yellow = Color(0xFFF3B51B);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: items.length,
            itemBuilder: (_, i) {
              final it = items[i];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x18000000),
                      blurRadius: 22,
                      offset: Offset(0, 14),
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(it.imageUrl, fit: BoxFit.cover),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              darkBlue.withOpacity(0.85),
                              primaryBlue.withOpacity(0.35),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: yellow,
                                      borderRadius: BorderRadius.circular(999),
                                    ),
                                    child: Text(
                                      it.title,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    it.model,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.92),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child: Text(
                                      "السعر: ${it.priceText}",
                                      style: const TextStyle(
                                        color: darkBlue,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 92,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.88),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _SpecLine("Displacement", "803 cc"),
                                  _SpecLine("Horse Power", "73 hp"),
                                  _SpecLine("Torque", "67 Nm"),
                                  _SpecLine("Dry Weight", "175 Kg"),
                                  _SpecLine("Safety", "ABS"),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          PositionedDirectional(
            start: 0,
            top: 78,
            child: _NavArrow(
              icon: Icons.chevron_right,
              onTap: () {
                final current = pageController.page?.round() ?? 0;
                final next = (current - 1).clamp(0, items.length - 1);
                pageController.animateToPage(
                  next,
                  duration: const Duration(milliseconds: 280),
                  curve: Curves.easeOut,
                );
              },
            ),
          ),
          PositionedDirectional(
            end: 0,
            top: 78,
            child: _NavArrow(
              icon: Icons.chevron_left,
              onTap: () {
                final current = pageController.page?.round() ?? 0;
                final next = (current + 1).clamp(0, items.length - 1);
                pageController.animateToPage(
                  next,
                  duration: const Duration(milliseconds: 280),
                  curve: Curves.easeOut,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SpecLine extends StatelessWidget {
  final String k;
  final String v;

  const _SpecLine(this.k, this.v);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            k,
            style: const TextStyle(
              color: Color(0xFF6C7688),
              fontSize: 10.5,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            v,
            style: const TextStyle(
              color: Color(0xFF0F3E7A),
              fontSize: 11.5,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class _NavArrow extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _NavArrow({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(999),
        child: Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                color: Color(0x12000000),
                blurRadius: 10,
                offset: Offset(0, 6),
              )
            ],
          ),
          child: Icon(icon, color: const Color(0xFF0F3E7A), size: 28),
        ),
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// OFFERS
/// ─────────────────────────────────────────────────────────────────────────
class _OfferCardData {
  final String badge;
  final String title;
  final String price;

  const _OfferCardData({
    required this.badge,
    required this.title,
    required this.price,
  });
}

class _HorizontalOffers extends StatelessWidget {
  final List<_OfferCardData> offers;

  const _HorizontalOffers({required this.offers});

  static const borderBlue = Color(0xFFBBD3F3);
  static const primaryBlue = Color(0xFF1E5AA8);
  static const yellow = Color(0xFFF3B51B);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 108,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (_, i) {
          final o = offers[i];
          return Container(
            width: 220,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: borderBlue, width: 1.2),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x0F000000),
                  blurRadius: 18,
                  offset: Offset(0, 10),
                )
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEAF2FF),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.local_offer_outlined,
                      color: primaryBlue),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        o.title,
                        style: const TextStyle(
                          color: primaryBlue,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "السعر: ${o.price}",
                        style: const TextStyle(
                          color: Color(0xFF6C7688),
                          fontWeight: FontWeight.w800,
                          fontSize: 12.5,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: yellow,
                              borderRadius: BorderRadius.circular(999),
                            ),
                            child: Text(
                              o.badge,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "تفاصيل أكثر",
                              style: TextStyle(
                                color: primaryBlue,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// CHIPS
/// ─────────────────────────────────────────────────────────────────────────
class _ChipFilters extends StatefulWidget {
  final List<String> chips;
  final ValueChanged<String> onTap;

  const _ChipFilters({required this.chips, required this.onTap});

  @override
  State<_ChipFilters> createState() => _ChipFiltersState();
}

class _ChipFiltersState extends State<_ChipFilters> {
  int idx = 0;

  static const primaryBlue = Color(0xFF1E5AA8);
  static const borderBlue = Color(0xFFBBD3F3);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.chips.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (_, i) {
          final selected = i == idx;
          return InkWell(
            onTap: () {
              setState(() => idx = i);
              widget.onTap(widget.chips[i]);
            },
            borderRadius: BorderRadius.circular(999),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: selected ? primaryBlue : Colors.white,
                borderRadius: BorderRadius.circular(999),
                border: Border.all(color: borderBlue, width: 1.1),
              ),
              child: Text(
                widget.chips[i],
                style: TextStyle(
                  color: selected ? Colors.white : primaryBlue,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// PRODUCTS GRID
/// ─────────────────────────────────────────────────────────────────────────
class _ProductData {
  final String title;
  final String subtitle;
  final String price;
  final String imageUrl;

  const _ProductData({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imageUrl,
  });
}

class _ProductsGrid extends StatelessWidget {
  final List<_ProductData> products;

  const _ProductsGrid({required this.products});

  static const borderBlue = Color(0xFFBBD3F3);
  static const primaryBlue = Color(0xFF1E5AA8);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 520 ? 3 : 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.78,
      ),
      itemBuilder: (_, i) => _ProductCard(p: products[i]),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final _ProductData p;

  const _ProductCard({required this.p});

  static const borderBlue = Color(0xFFBBD3F3);
  static const primaryBlue = Color(0xFF1E5AA8);
  static const darkBlue = Color(0xFF0F3E7A);
  static const yellow = Color(0xFFF3B51B);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: borderBlue, width: 1.2),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 18,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(p.imageUrl, fit: BoxFit.cover),
                  ),
                  PositionedDirectional(
                    top: 10,
                    start: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: yellow,
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Text(
                        p.price,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    p.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: darkBlue,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    p.subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF6C7688),
                      fontWeight: FontWeight.w800,
                      fontSize: 12.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryBlue,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "اطلب الآن",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// GALLERY
/// ─────────────────────────────────────────────────────────────────────────
class _GalleryItem {
  final String title;
  final String imageUrl;

  const _GalleryItem({required this.title, required this.imageUrl});
}

class _GalleryRow extends StatelessWidget {
  final List<_GalleryItem> items;

  const _GalleryRow({required this.items});

  static const borderBlue = Color(0xFFBBD3F3);
  static const darkBlue = Color(0xFF0F3E7A);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (_, i) {
          final it = items[i];
          return Container(
            width: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: borderBlue, width: 1.2),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x0F000000),
                  blurRadius: 18,
                  offset: Offset(0, 10),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(it.imageUrl, fit: BoxFit.cover),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.55),
                        ],
                      ),
                    ),
                    child: Text(
                      it.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// BRANDS STRIP
/// ─────────────────────────────────────────────────────────────────────────
class _BrandsStrip extends StatelessWidget {
  const _BrandsStrip();

  @override
  Widget build(BuildContext context) {
    final brands = const [
      "HONDA",
      "BAJAJ",
      "Benelli",
      "TVS",
      "Yamaha",
    ];

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 18,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        children: brands
            .map(
              (b) => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F6FF),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  b,
                  style: const TextStyle(
                    color: Color(0xFF0F3E7A),
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// FAQ
/// ─────────────────────────────────────────────────────────────────────────
class _FaqList extends StatelessWidget {
  const _FaqList();

  @override
  Widget build(BuildContext context) {
    final faqs = const [
      ("ازاي اقسط موتوسيكل؟", "بتختار الموديل ونظام التقسيط المناسب وتدخل بياناتك، وهنكلمك للتأكيد."),
      ("ايه الأوراق اللازمة لشراء موتوسيكل؟", "بطاقة شخصية + إيصال مرافق + إثبات دخل (حسب نظام التقسيط)."),
      ("ايه العروض المتوفرة؟", "بتتغير يوميًا—تابع قسم عروض اليوم أو كلمنا للمتاح."),
      ("ايه الخدمات اللي بتقدموها؟", "بيع - تقسيط - صيانة - قطع غيار - خدمة ما بعد البيع."),
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 18,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Column(
        children: faqs
            .map(
              (f) => ExpansionTile(
                title: Text(
                  f.$1,
                  style: const TextStyle(
                    color: Color(0xFF0F3E7A),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                childrenPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                children: [
                  Text(
                    f.$2,
                    style: const TextStyle(
                      color: Color(0xFF6C7688),
                      fontWeight: FontWeight.w700,
                      height: 1.35,
                    ),
                  )
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────────────────
/// FOOTER
/// ─────────────────────────────────────────────────────────────────────────
class _Footer extends StatelessWidget {
  final VoidCallback onSupport;
  final VoidCallback onContact;

  const _Footer({required this.onSupport, required this.onContact});

  static const primaryBlue = Color(0xFF1E5AA8);
  static const darkBlue = Color(0xFF0F3E7A);
  static const yellow = Color(0xFFF3B51B);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: darkBlue,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            children: [
              const Text(
                "مركز الدعم",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "لو ملقتيش إجابة لسؤالك هنا، تقدري تتواصلي معانا في أي وقت.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE7EEFF),
                  fontWeight: FontWeight.w700,
                  height: 1.35,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: yellow,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: onContact,
                      child: const Text(
                        "اتصل بنا",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white, width: 1.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: onSupport,
                      child: const Text(
                        "الدعم",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          "@2026 motocyklaty.store",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF7B8598),
            fontSize: 12.5,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
